FROM docker.io/nginx:latest

RUN sed -i -r "/^<body>$/a <p>created at $(date)</p>" /usr/share/nginx/html/index.html

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
STOPSIGNAL SIGQUIT
CMD ["nginx" "-g" "daemon off;"]
