FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
EXPOSE 80
CMD ["/usr/local/apache2/bin/apache2ctl", "-D", "FOREGROUND"]
