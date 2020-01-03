FROM docker.io/centos
MAINTAINER iouu
LABEL description="This is a iouu's test dockerfile!"

RUN yum install -t httpd 
WORKDIR /var/www/html

RUN echo "hello" > index.html
CMD /usr/sbin/httpd -D FOREGROUND
CMD echo "hello"
