# Build stage
FROM node:16 as build
WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./
RUN npm install --legacy-peer-deps

# Copiar código fuente
COPY . .

# ¡CLAVE! Declarar ARGs para que Docker pueda usar las variables de Railway
ARG VITE_BACKEND_URL
ARG VITE_APP_MAP

# DEBUG: Verificar que las variables lleguen (opcional - remover después)
RUN echo "=== DEBUG BUILD TIME ==="
RUN echo "VITE_BACKEND_URL: $VITE_BACKEND_URL"
RUN echo "VITE_APP_MAP: $VITE_APP_MAP"
RUN echo "========================"

# Exportar como variables de entorno para el build
ENV VITE_BACKEND_URL=$VITE_BACKEND_URL
ENV VITE_APP_MAP=$VITE_APP_MAP

# Ejecutar el build (ahora con las variables disponibles)
RUN npm run build

# Production stage
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