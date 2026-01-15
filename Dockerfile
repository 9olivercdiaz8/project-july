FROM nginx:alpine

# Limpiamos configuración default para máxima velocidad
RUN rm /etc/nginx/conf.d/default.conf

# Copiamos nuestra configuración optimizada y la web
COPY nginx.conf /etc/nginx/conf.d/
COPY public /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
