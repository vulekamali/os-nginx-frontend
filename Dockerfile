FROM sickp/alpine-nginx

RUN apk add gettext

ADD .htpasswd /etc/nginx/.htpasswd
ADD nginx.conf /etc/nginx/nginx.conf
ADD server-rules.conf.template /etc/nginx/server-rules.conf.template
ADD docker-entrypoint.sh /docker-entrypoint.sh

ADD 500.html /usr/share/nginx/errors/500.html

EXPOSE 8080

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
