FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page256/multipurpose.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip multipurpose.zip
RUN cp -rvf multipurpose/* .
RUN rm -rf multipurpose multipurpose.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
