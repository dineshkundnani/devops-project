FROM centos
RUN yum install httpd zip unzip -y

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
