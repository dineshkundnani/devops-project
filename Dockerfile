FROM rupeshsaini09/centos
RUN yum install httpd zip unzip -y

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
