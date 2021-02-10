FROM nginx:1.19.6

WORKDIR /usr/share/nginx/html/a
COPY src/a/dist/a .

WORKDIR /etc/nginx/conf.d
COPY nginx-conf .

# CMD ["/bin/sh",  "-c",  "envsubst < /usr/share/nginx/html/a/assets/env.template.js > /usr/share/nginx/html/a/assets/env.js && exec nginx -g 'daemon off;'"]

# EXPOSE 80
