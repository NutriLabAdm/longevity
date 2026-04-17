#!/bin/bash
# VPS Setup Script for Beget
# Run this on your Beget server via SSH

echo "=== VPS Setup for longevity.startupassist.ru ==="
echo "Detecting OS..."
echo ""

# Detect OS
if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "OS: $PRETTY_NAME"
fi

# Check if it's Beget (CentOS/RHEL)
if command -v dnf &> /dev/null; then
    echo "Package manager: dnf (CentOS/RHEL)"
    
    echo ""
    echo "Installing Nginx..."
    sudo dnf install -y nginx
    
    echo ""
    echo "Creating app directory..."
    sudo mkdir -p /var/www/longevity
    sudo chown -R $USER:$USER /var/www/longevity
    
    echo ""
    echo "Nginx installed. Now configure in Beget panel:"
    echo "1. Go to Websites > longevity.startupassist.ru"
    echo "2. Enable SSL in CDN & SSL settings"
    echo "3. Point document root to /var/www/longevity"
    echo ""
    echo "Then run: sudo nginx -t && sudo systemctl restart nginx"
    
elif command -v apt &> /dev/null; then
    echo "Package manager: apt (Debian/Ubuntu)"
    
    echo ""
    echo "Installing Nginx and certbot..."
    sudo apt update
    sudo apt install -y nginx certbot python3-certbot-nginx
    
    echo ""
    echo "Creating app directory..."
    sudo mkdir -p /var/www/longevity
    sudo chown -R www-data:www-data /var/www/longevity
    
    echo ""
    echo "Getting SSL certificate..."
    sudo certbot --nginx -d longevity.startupassist.ru --non-interactive --agree-tos --email admin@startupassist.ru
    
    echo ""
    echo "Creating Nginx config..."
    sudo tee /etc/nginx/sites-available/longevity << 'EOF'
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

    root /var/www/longevity;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
EOF

    echo ""
    echo "Enabling site and restarting Nginx..."
    sudo ln -sf /etc/nginx/sites-available/longevity /etc/nginx/sites-enabled/
    sudo nginx -t
    sudo systemctl restart nginx
    
    echo ""
    echo "=== DONE ==="
    echo "Upload files to /var/www/longevity"
else
    echo "Unknown OS. Please configure manually via Beget panel."
fi