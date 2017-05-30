FROM amazonlinux

RUN yum update -y && yum install -y httpd24 php56 php56-mysqlnd wget
RUN wget https://wordpress.org/latest.tar.gz && tar -xf latest.tar.gz && rm latest.tar.gz && cd wordpress/ && cp -r . /var/www/html && cd .. && rm -rf wordpress/ \
    && chown -R apache:apache /var/www/html && chmod -R 777 /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

