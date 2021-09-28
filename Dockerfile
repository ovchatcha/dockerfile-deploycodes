FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
EXPOSE 80
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf
CMD ["/usr/local/apache2/bin/apachectl", "-D", "FOREGROUND"]
