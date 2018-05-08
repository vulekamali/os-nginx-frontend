FROM sickp/alpine-nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD server-rules.conf /etc/nginx/server-rules.conf

ADD 500.html /usr/share/nginx/errors/500.html

EXPOSE 80
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
