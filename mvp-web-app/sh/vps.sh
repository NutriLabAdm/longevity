#!/bin/bash
# ===========================================
# VPS Setup - Connect via SSH and configure
# ===========================================
# Usage: ./vps.sh
# Will SSH to server and run configuration

SERVER="root@217.114.8.5"
DOMAIN="longevity.startupassist.ru"
WEBROOT="/var/www/longevity.startupassist.ru"

echo "=== Connecting to $SERVER ==="

# SSH and run configuration commands
ssh $SERVER << 'EOF'

echo "=== Configuring Nginx + SSL for longevity.startupassist.ru ==="

# 1. Create web directory
echo "[1/5] Creating web directory..."
mkdir -p /var/www/longevity.startupassist.ru
chown -R www-data:www-data /var/www/longevity.startupassist.ru
chmod -R 755 /var/www/longevity.startupassist.ru

# 2. Get SSL certificate
echo "[2/5] Getting SSL certificate..."
certbot certonly --webroot -w /var/www/longevity.startupassist.ru -d longevity.startupassist.ru --non-interactive --agree-tos --email admin@startupassist.ru

# 3. Create Nginx config
echo "[3/5] Creating Nginx config..."
cat > /etc/nginx/sites-available/longevity << 'NGINX'
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

    root /var/www/longevity.startupassist.ru;
    index index.html index.htm;
    
    add_header X-Frame-Options "SAMEORIGIN" always;
    add_header X-Content-Type-Options "nosniff" always;

    gzip on;
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml;

    location / {
        try_files $uri $uri/ =404;
    }

    location ~* \.(jpg|jpeg|png|gif|ico|css|js|svg|woff|woff2|ttf|eot)$ {
        expires 30d;
        add_header Cache-Control "public, immutable";
    }
}
NGINX

# 4. Enable site
echo "[4/5] Enabling site..."
ln -sf /etc/nginx/sites-available/longevity /etc/nginx/sites-enabled/

# 5. Test and reload
echo "[5/5] Testing and reloading Nginx..."
nginx -t && systemctl reload nginx

echo ""
echo "=== DONE ==="
echo "Web root: /var/www/longevity.startupassist.ru"
echo "Upload files to continue..."

EOF

echo ""
echo "=== SSH session complete ==="