#!/bin/bash
# ===========================================
# VPS Setup - Run on Beget server via SSH
# ===========================================
# Usage: ssh user@217.114.8.5 then paste or upload this script

DOMAIN="longevity.startupassist.ru"
WEBROOT="/var/www/longevity.startupassist.ru"

echo "=== Configuring Nginx + SSL for $DOMAIN ==="

# 1. Create web directory
echo "[1/5] Creating web directory..."
mkdir -p $WEBROOT
chown -R www-data:www-data $WEBROOT
chmod -R 755 $WEBROOT

# 2. Get SSL certificate
echo "[2/5] Getting SSL certificate..."
certbot certonly --webroot -w $WEBROOT -d $DOMAIN --non-interactive --agree-tos --email admin@startupassist.ru

# 3. Create Nginx config
echo "[3/5] Creating Nginx config..."
cat > /etc/nginx/sites-available/longevity << EOF
server {
    listen 80;
    server_name $DOMAIN;
    return 301 https://\$server_name\$request_uri;
}

server {
    listen 443 ssl http2;
    server_name $DOMAIN;

    ssl_certificate /etc/letsencrypt/live/$DOMAIN/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/$DOMAIN/privkey.pem;
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;

    root $WEBROOT;
    index index.html index.htm;
    
    add_header X-Frame-Options "SAMEORIGIN" always;
    add_header X-Content-Type-Options "nosniff" always;

    gzip on;
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml;

    location / {
        try_files \$uri \$uri/ =404;
    }

    location ~* \.(jpg|jpeg|png|gif|ico|css|js|svg|woff|woff2|ttf|eot)$ {
        expires 30d;
        add_header Cache-Control "public, immutable";
    }
}
EOF

# 4. Enable site
echo "[4/5] Enabling site..."
ln -sf /etc/nginx/sites-available/longevity /etc/nginx/sites-enabled/

# 5. Test and reload
echo "[5/5] Testing and reloading Nginx..."
nginx -t && systemctl reload nginx

echo ""
echo "=== DONE ==="
echo "Web root: $WEBROOT"
echo "Upload files to: $WEBROOT"