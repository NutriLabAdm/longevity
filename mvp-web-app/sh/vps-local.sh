#!/bin/bash
# ===============================
# VPS Setup for longevity.startupassist.ru
# Run this on Beget server via SSH
# ===============================

echo "=== VPS Setup for longevity.startupassist.ru ==="
echo "This script should be run on your Beget server"
echo ""
echo "To connect to your server:"
echo "  ssh your_username@startupassist.ru"
echo ""
echo "Then upload and run this script:"
echo "  wget -O vps.sh https://your-script-url/vps.sh"
echo "  chmod +x vps.sh"
echo "  sudo ./vps.sh"
echo ""
echo "=== Manual Setup Instructions for Beget ==="
echo ""
echo "1. Login to Beget control panel"
echo "2. Go to Websites > Your site > CDN & SSL"
echo "3. Enable free SSL certificate"
echo ""
echo "4. Create directory:"
echo "   mkdir -p /var/www/longevity"
echo ""
echo "5. Upload files via FTP or git"
echo ""
echo "6. Create Nginx config at /etc/nginx/sites-available/longevity:"
echo ""
cat << 'NGINX_CONFIG'
server {
    listen 80;
    server_name longevity.startupassist.ru;
    return 301 https://$server_name$request_uri;
}

server {
    listen 443 ssl http2;
    server_name longevity.startupassist.ru;

    ssl_certificate /etc/ssl/certs/ssl-cert-snakeoil.pem;
    ssl_certificate_key /etc/ssl/private/ssl-cert-snakeoil.key;

    root /var/www/longevity;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }

    location /api/ {
        proxy_pass http://localhost:8000;
        proxy_set_header Host $host;
    }
}
NGINX_CONFIG

echo ""
echo "7. Enable site:"
echo "   ln -s /etc/nginx/sites-available/longevity /etc/nginx/sites-enabled/"
echo "   nginx -t"
echo "   systemctl reload nginx"
echo ""
echo "=== Done ==="