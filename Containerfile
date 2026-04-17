FROM amazonlinux:latest

RUN yum install -y httpd zip unzip && yum clean all

WORKDIR /var/www/html

ADD https://templated.live/condorific/download/condorific.zip
RUN unzip /tmp/condorific.zip

EXPOSE 89

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
