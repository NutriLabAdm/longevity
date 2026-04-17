#!/bin/bash
# VPS Setup Script for longevity.startupassist.ru
# Run on Beget server with Nginx + SSL

set -e

DOMAIN="longevity.startupassist.ru"
EMAIL="admin@startupassist.ru"
APP_DIR="/var/www/longevity"
SSL_DIR="/etc/nginx/ssl"

echo "=== VPS Configuration for $DOMAIN ==="

# Update system
echo "[1/8] Updating system..."
apt update && apt upgrade -y

# Install Nginx
echo "[2/8] Installing Nginx..."
apt install -y nginx certbot python3-certbot-nginx

# Create app directory
echo "[3/8] Creating app directory..."
mkdir -p $APP_DIR
chown -R www-data:www-data $APP_DIR

# Generate SSL certificates
echo "[4/8] Generating SSL certificate..."
certbot --nginx -d $DOMAIN --non-interactive --agree-tos --email $EMAIL

# Create Nginx config
echo "[5/8] Creating Nginx configuration..."
cat > /etc/nginx/sites-available/longevity << 'EOF'
server {
    listen 80;
    server_name longevity.startupassist.ru;
    return 301 https://$server_name$request_uri;
}

server {
    listen 443 ssl http2;
    server_name longevity.startupassist.ru;

    ssl_certificate /etc/letsencrypt/live/longevity.startupassist.ru/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/longevity.startupassist.ru/privkey.pem;
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;

    root /var/www/longevity;
    index index.html;

    # Security headers
    add_header X-Frame-Options "SAMEORIGIN" always;
    add_header X-Content-Type-Options "nosniff" always;
    add_header X-XSS-Protection "1; mode=block" always;

    # Gzip
    gzip on;
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml;

    location / {
        try_files $uri $uri/ =404;
    }

    # API proxy (future)
    location /api/ {
        proxy_pass http://localhost:8000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }

    # Static assets
    location /assets/ {
        expires 30d;
        add_header Cache-Control "public, immutable";
    }
}
EOF

# Enable site
echo "[6/8] Enabling Nginx site..."
ln -sf /etc/nginx/sites-available/longevity /etc/nginx/sites-enabled/
nginx -t

# Restart Nginx
echo "[7/8] Restarting Nginx..."
systemctl restart nginx

# Setup auto-renewal for SSL
echo "[8/8] Setting up SSL auto-renewal..."
(crontab -l 2>/dev/null; echo "0 0 * * * certbot renew --quiet --deploy-hook 'systemctl reload nginx'") | crontab -

echo "=== VPS Setup Complete ==="
echo "Domain: $DOMAIN"
echo "App directory: $APP_DIR"
echo "SSL: Enabled with auto-renewal"