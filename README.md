This Dockerfile was made to build a docker container for running Wordpress on Amazon Linux.

It was only intended for testing.

It doesn't include mysql server. It is intended to connect to a external DB instant (RDS for example).

Base image: amazonlinux:latest

Packages included: hhtpd24, php56, php56-mysqlnd wget

Wordpress code downloaded from: https://wordpress.org/latest.tar.gz

Port 80 exposed

Permissions on /var/www/html set to 777. Hardening is enforced for production usage.

To build pull Dockerfile from github and execute 'docker build -t <YourImageName>:latest .'.
