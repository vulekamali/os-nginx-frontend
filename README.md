[![Travis](https://img.shields.io/travis/openspending/os-nginx-frontend.svg)](https://travis-ci.org/openspending/os-nginx-frontend)

# os-nginx-frontend

Nginx Dockerfile and configuration for the openspending.org website.

Docker image built and pushed to https://hub.docker.com/r/openspending/os-nginx-frontend by Travis after a successful test run on master.

## Managing HTTP Basic Authentification

To secure some site areas with a simple login-password pair:
- think up a username (for example, `username`)
- generate a password: `openssl rand -base64 16` (for example, `password`)
- generate a passfile: `htpasswd -c .htpasswd username`
- verify the password: `htpasswd -v .htpasswd username`
- add the passfile to the image in `Dokerfile`: `ADD .htpasswd /etc/nginx/.htpasswd`
- add `auth_basic "Site Area Name"` to the server section in `nginx.conf`
- add `auth_basic_user_file /etc/nginx/.htpasswd;` to the server section in `nginx.conf`
