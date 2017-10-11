FROM centos 
RUN yum -y update 
RUN yum -y  install httpd  git 
COPY code/index.html /var/www/html
RUN rm -rf /var/www/html/.git
VOLUME /var/www/html
VOLUME /var/log
CMD ["apachectl","-D","FOREGROUND"]
