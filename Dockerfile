# Базовый образ NGINX с RTMP
FROM alfg/nginx-rtmp:latest

# Копируем конфигурационный файл NGINX
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем директорию html в контейнер
COPY html /usr/share/nginx/html

# Открываем порты для RTMP и HTTP
EXPOSE 1935 80

# Запуск NGINX
CMD ["nginx", "-g", "daemon off;"]
