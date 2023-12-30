FROM ubuntu
RUN apt-get update
RUN apt install apache2 -y
RUN apt install git -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
