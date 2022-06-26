FROM rhel7:7.3

MAINTAINER Animesh Shrivastava

RUN yum install -y --setopt=tsflags=nodocs --noplugins httpd && \
    yum clean all --noplugins -y 
 
ADD index.html /var/www/html

EXPOSE 8080

RUN sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf && \
     chgrp -R 0 /var/log/httpd /var/run/httpd && \
     chmod -R g=u /var/log/httpd /var/run/httpd

USER 1001

RUN rm -rf /run/httpd && mkdir /run/httpd

CMD /usr/sbin/apachectl -DFOREGROUND
 
