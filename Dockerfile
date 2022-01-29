FROM docker.io/nginx:latest

RUN sed -r "/^<body>$/a <p>created at $(date)</p>" /var/www/html/index.html

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
STOPSIGNAL SIGQUIT
CMD ["nginx" "-g" "daemon off;"]
