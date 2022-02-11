# Base Image - Official Alpine
FROM alpine

# Upgrade existing packages in the base image
RUN apk --no-cache upgrade

# Install apache from packages with out caching install files
RUN apk add --no-cache apache2

# Open port for httpd access
EXPOSE 80

CMD ["-D","FOREGROUND"]

# Srart httpd when container runs
ENTRYPOINT ["/usr/sbin/httpd"]
