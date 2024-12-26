FROM rockylinux:8 
COPY efly*.zip /opt/
RUN yum install httpd unzip -y && unzip /opt/efly*.zip -d /opt/  && rm -rf /opt/*.zip && cp -rpv /opt/efly*/* /var/www/html/
CMD ["httpd", "-D", "FOREGROUND"]
