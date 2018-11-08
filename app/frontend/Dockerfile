FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY build /build
COPY mime.types /mime.types

# expose both the HTTP (80) and HTTPS (443) ports
EXPOSE 8087 

CMD nginx -q

