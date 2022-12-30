FROM centos
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/bonativo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip bonativo.zip
RUN rm -rf bonativo.zip &&\
    cp -rf bonativo/* . &&\
    rm -rf bonativo &&\
    mkdir dinesh &&\ 
    touch dinesh/dinesh.txt 
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
