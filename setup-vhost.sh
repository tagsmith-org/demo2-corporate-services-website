#!/bin/bash

# Скрипт для настройки виртуального хоста demo2.websmith-shop.com

DOMAIN="demo2.websmith-shop.com"
PROJECT_DIR="/var/www/demo2-corporate-services-website"
NGINX_SITES="/etc/nginx/sites-available"
NGINX_ENABLED="/etc/nginx/sites-enabled"

echo "🚀 Настройка виртуального хоста для $DOMAIN"

# 1. Создаем директорию проекта
echo "📁 Создаем директорию проекта..."
sudo mkdir -p $PROJECT_DIR
sudo chown -R $USER:$USER $PROJECT_DIR

# 2. Создаем конфигурацию nginx
echo "⚙️ Создаем конфигурацию nginx..."
sudo tee $NGINX_SITES/$DOMAIN > /dev/null <<EOF
server {
    listen 80;
    listen [::]:80;
    server_name $DOMAIN;
    
    # Redirect HTTP to HTTPS
    return 301 https://\$server_name\$request_uri;
}

server {
    listen 443 ssl http2;
    listen [::]:443 ssl http2;
    server_name $DOMAIN;
    
    # SSL Configuration
    ssl_certificate /etc/letsencrypt/live/$DOMAIN/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/$DOMAIN/privkey.pem;
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers ECDHE-RSA-AES256-GCM-SHA512:DHE-RSA-AES256-GCM-SHA512:ECDHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-GCM-SHA384;
    ssl_prefer_server_ciphers off;
    ssl_session_cache shared:SSL:10m;
    ssl_session_timeout 10m;
    
    # Security Headers
    add_header X-Frame-Options "SAMEORIGIN" always;
    add_header X-XSS-Protection "1; mode=block" always;
    add_header X-Content-Type-Options "nosniff" always;
    add_header Referrer-Policy "no-referrer-when-downgrade" always;
    add_header Content-Security-Policy "default-src 'self' http: https: data: blob: 'unsafe-inline'" always;
    
    # Root directory
    root $PROJECT_DIR;
    index index.html;
    
    # Gzip compression
    gzip on;
    gzip_vary on;
    gzip_min_length 1024;
    gzip_proxied expired no-cache no-store private must-revalidate auth;
    gzip_types text/plain text/css text/xml text/javascript application/x-javascript application/xml+rss application/javascript;
    
    # Handle Vue Router (SPA)
    location / {
        try_files \$uri \$uri/ /index.html;
    }
    
    # Cache static assets
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
        access_log off;
    }
    
    # Cache HTML files
    location ~* \.html$ {
        expires 1h;
        add_header Cache-Control "public, must-revalidate";
    }
    
    # Security: Hide nginx version
    server_tokens off;
    
    # Logs
    access_log /var/log/nginx/$DOMAIN.access.log;
    error_log /var/log/nginx/$DOMAIN.error.log;
    
    # Rate limiting
    limit_req_zone \$binary_remote_addr zone=api:10m rate=10r/s;
    limit_req zone=api burst=20 nodelay;
}
EOF

# 3. Активируем сайт
echo "🔗 Активируем сайт..."
sudo ln -sf $NGINX_SITES/$DOMAIN $NGINX_ENABLED/$DOMAIN

# 4. Проверяем конфигурацию nginx
echo "✅ Проверяем конфигурацию nginx..."
sudo nginx -t

if [ $? -eq 0 ]; then
    echo "✅ Конфигурация nginx корректна"
    
    # 5. Перезагружаем nginx
    echo "🔄 Перезагружаем nginx..."
    sudo systemctl reload nginx
    
    echo "🎉 Виртуальный хост $DOMAIN успешно настроен!"
    echo "📂 Директория проекта: $PROJECT_DIR"
    echo "🌐 Сайт будет доступен по адресу: https://$DOMAIN"
    
else
    echo "❌ Ошибка в конфигурации nginx"
    exit 1
fi

# 6. Настройка SSL (если certbot установлен)
if command -v certbot &> /dev/null; then
    echo "🔒 Настройка SSL сертификата..."
    sudo certbot --nginx -d $DOMAIN --non-interactive --agree-tos --email admin@websmith-shop.com
else
    echo "⚠️ Certbot не установлен. Установите его для SSL сертификатов:"
    echo "sudo apt install certbot python3-certbot-nginx"
fi

echo "✨ Настройка завершена!"
