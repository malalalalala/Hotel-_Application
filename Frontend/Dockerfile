FROM node:16 as build
WORKDIR /app
COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html

# Configuración de Nginx específica para docs
RUN echo 'server { \
    listen 80; \
    server_name localhost; \
    \
    # Configuración específica para la carpeta docs \
    location /docs { \
        root /usr/share/nginx/html; \
        index index.html; \
        try_files $uri $uri/ $uri/index.html /docs/index.html; \
    } \
    \
    # Archivos estáticos \
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot|html)$ { \
        root /usr/share/nginx/html; \
        expires 1y; \
        add_header Cache-Control "public, immutable"; \
    } \
    \
    # Configuración para React SPA \
    location / { \
        root /usr/share/nginx/html; \
        index index.html; \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]