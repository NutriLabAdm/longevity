#!/bin/bash
# ===========================================
# VPS Setup - Connect via SSH and configure
# ===========================================
# Usage: ./vps.sh

SERVER="root@217.114.8.5"

echo "=== Connecting to $SERVER ==="

ssh $SERVER << 'EOF'

echo "=== Configuring Nginx for longevity.startupassist.ru ==="

# 1. Create web directory
echo "[1/4] Creating web directory..."
mkdir -p /var/www/longevity.startupassist.ru
chown -R www-data:www-data /var/www/longevity.startupassist.ru
chmod -R 755 /var/www/longevity.startupassist.ru

# 2. Create Nginx config (HTTP only for now, SSL after DNS points to server)
echo "[2/4] Creating Nginx config..."
cat > /etc/nginx/sites-available/longevity << 'NGINX'
server {
    listen 80;
    server_name longevity.startupassist.ru;

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

# 3. Enable site
echo "[3/4] Enabling site..."
ln -sf /etc/nginx/sites-available/longevity /etc/nginx/sites-enabled/

# 4. Test and reload
echo "[4/4] Testing and reloading Nginx..."
nginx -t && systemctl reload nginx

echo ""
echo "=== DONE (HTTP) ==="
echo "Web root: /var/www/longevity.startupassist.ru"
echo ""
echo "NEXT STEPS:"
echo "1. Ensure DNS A record points to this server"
echo "2. Test: curl http://longevity.startupassist.ru"
echo "3. Then run SSL setup after domain resolves"
echo ""

EOF

echo "=== SSH session complete ==="