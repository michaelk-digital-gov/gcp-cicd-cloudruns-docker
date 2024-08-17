#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Michael Kravtsiv
#---------------------------------------------------------------------------

FROM ubuntu:24.04

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo '<font color='blue'>Shabak Shalom from Docker Image on CloudRun of Michael Kravtsiv!<br>'   > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.0</font></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
