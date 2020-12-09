FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page255/author.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip author.zip
RUN cp -rvf author/* .
RUN rm -rf author author.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
