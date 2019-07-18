FROM nginx:1.17-alpine
LABEL maintainer="Danya Sliusar <danya.brain@gmail.com>"

ADD default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
