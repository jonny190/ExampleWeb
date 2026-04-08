FROM nginx:alpine

COPY . /usr/share/nginx/html

# Enable gzip compression
RUN printf 'gzip on;\ngzip_types text/plain text/css application/javascript;\ngzip_min_length 256;\n' \
    > /etc/nginx/conf.d/gzip.conf

EXPOSE 80
