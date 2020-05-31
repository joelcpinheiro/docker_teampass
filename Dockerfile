FROM centos:centos7

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm &&  rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum update -y && yum install httpd curl php56w php56w-opcache php56w-common php56w-mcrypt php56w-ldap php56w-mysqlnd php56w-mbstring php56w-bcmath php56w-gd -y

RUN sed -i "s/max_execution_time = 30/max_execution_time = 120/g" /etc/php.ini && sed -i "s/expose_php = On/expose_php = Off/g" /etc/php.ini
RUN sed -i "s/#ServerName www.example.com:80/ServerName localhost:80/g" /etc/httpd/conf/httpd.conf
RUN echo "ServerSignature Off" >> /etc/httpd/conf/httpd.conf && echo "ServerTokens Prod" >> /etc/httpd/conf/httpd.conf

#COPY index.html /var/www/html/
LABEL description="Teampass webserver"
HEALTHCHECK --interval=1m --timeout=3s CMD curl -f http://localhost/ || exit 1

VOLUME /var/www/html/
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
