#!/bin/bash
# DevOps Deployment Script for longevity.startupassist.ru
# Options for deploying to Beget server

set -e

REMOTE_HOST="217.114.8.5"
REMOTE_USER="root"
REMOTE_DIR="/var/www/longevity.startupassist.ru"
DOMAIN="longevity.startupassist.ru"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log_info() { echo -e "${GREEN}[INFO]${NC} $1"; }
log_warn() { echo -e "${YELLOW}[WARN]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

show_menu() {
    echo "=============================================="
    echo "  DevOps CI/CD - longevity.startupassist.ru"
    echo "=============================================="
    echo ""
    echo "Server: $REMOTE_HOST"
    echo "Web Root: $REMOTE_DIR"
    echo ""
    echo "BEFORE FIRST DEPLOY:"
    echo "  1. SSH to server: ssh $REMOTE_USER@$REMOTE_HOST"
    echo "  2. Run: sudo bash vps.sh (or paste vps.sh content)"
    echo ""
    echo "COMMANDS:"
    echo "  1) Deploy to production   (rsync/scp files)"
    echo "  2) Pull from GitHub      (git clone/pull)"
    echo "  3) Backup current        (copy to backups/)"
    echo "  4) Rollback              (restore backup)"
    echo "  5) Check status          (nginx, SSL)"
    echo "  6) View logs             (tail access log)"
    echo "  7) Exit"
    echo ""
    read -p "Select option [1-7]: " choice
}

deploy_local() {
    log_info "Deploying local files to $REMOTE_HOST:$REMOTE_DIR"
    
    # Check local files exist
    if [ ! -d "www/longevity.startupassist.ru" ]; then
        log_error "www/longevity.startupassist.ru not found"
        return
    fi
    
    # Create backup first
    log_info "Creating backup..."
    ssh $REMOTE_USER@$REMOTE_HOST "mkdir -p $REMOTE_DIR/backups/$(date +%Y%m%d_%H%M%S) && cp -r $REMOTE_DIR/* \$_ || true"
    
    # Sync files - try rsync first, fallback to scp
    log_info "Syncing files..."
    if command -v rsync &> /dev/null; then
        rsync -avz --delete www/longevity.startupassist.ru/ $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR/
    else
        scp -r www/longevity.startupassist.ru/* $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR/
    fi
    
    # Set permissions
    ssh $REMOTE_USER@$REMOTE_HOST "chown -R www-data:www-data $REMOTE_DIR && find $REMOTE_DIR -type f -exec chmod 644 {} \; && find $REMOTE_DIR -type d -exec chmod 755 {} \;"
    
    log_info "Deployment complete!"
}

deploy_github() {
    log_info "Deploying from GitHub to $DOMAIN"
    
    read -p "Enter GitHub repo URL: " REPO_URL
    read -p "Enter branch [main]: " BRANCH
    BRANCH=${BRANCH:-main}
    
    ssh $REMOTE_USER@$REMOTE_HOST << EOF
        cd $REMOTE_DIR
        git init || true
        git remote add origin $REPO_URL
        git fetch origin
        git reset --hard origin/$BRANCH
        chown -R www-data:www-data .
    EOF
    
    log_info "Git deployment complete!"
}

backup() {
    log_info "Creating backup..."
    TIMESTAMP=$(date +%Y%m%d_%H%M%S)
    ssh $REMOTE_USER@$REMOTE_HOST "mkdir -p $REMOTE_DIR/backups/$TIMESTAMP && cp -r $REMOTE_DIR/* $REMOTE_DIR/backups/$TIMESTAMP/ || true"
    log_info "Backup saved to $REMOTE_DIR/backups/$TIMESTAMP"
}

rollback() {
    log_info "Available backups:"
    ssh $REMOTE_USER@$REMOTE_HOST "ls -1 $REMOTE_DIR/backups/ 2>/dev/null || echo 'No backups found'"
    
    read -p "Enter backup folder name to restore: " BACKUP_NAME
    
    if [ -n "$BACKUP_NAME" ]; then
        ssh $REMOTE_USER@$REMOTE_HOST "cp -r $REMOTE_DIR/backups/$BACKUP_NAME/* $REMOTE_DIR/"
        log_info "Rolled back to $BACKUP_NAME"
    else
        log_warn "No backup selected"
    fi
}

check_status() {
    log_info "Checking server status..."
    
    ssh $REMOTE_USER@$REMOTE_HOST << 'EOF'
        echo "=== Nginx Status ==="
        systemctl status nginx --no-pager | head -5
        
        echo ""
        echo "=== SSL Certificate ==="
        certbot certificates 2>/dev/null || echo "SSL not configured"
        
        echo ""
        echo "=== Domain Response ==="
        curl -sI https://longevity.startupassist.ru | head -5
EOF
}

view_logs() {
    log_info "Recent access logs (last 20 lines):"
    ssh $REMOTE_USER@$REMOTE_HOST "tail -20 /var/log/nginx/longevity.access.log 2>/dev/null || echo 'Log not found'"
    
    echo ""
    read -p "View error logs? [y/n]: " view_error
    if [ "$view_error" = "y" ]; then
        ssh $REMOTE_USER@$REMOTE_HOST "tail -20 /var/log/nginx/longevity.error.log 2>/dev/null || echo 'Log not found'"
    fi
}

# Main
if [ "$1" = "deploy" ]; then
    deploy_local
elif [ "$1" = "status" ]; then
    check_status
elif [ "$1" = "logs" ]; then
    view_logs
else
    show_menu
    case $choice in
        1) deploy_local ;;
        2) deploy_github ;;
        3) backup ;;
        4) rollback ;;
        5) check_status ;;
        6) view_logs ;;
        7) exit 0 ;;
        *) log_error "Invalid option" ;;
    esac
fi