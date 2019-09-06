FROM isaackuang/alpine-base:3.8.1

RUN curl https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub -o /etc/apk/keys/php-alpine.rsa.pub && \
    echo "@php https://dl.bintray.com/php-alpine/v3.8/php-7.2" >> /etc/apk/repositories && \
    apk --no-cache --progress add \
    git gcc re2c g++ make php7-dev libstdc++ openssl-dev openssl zlib zlib-dev && \
    cd /tmp && \
    wget https://www.php.net/distributions/php-7.2.1.tar.bz2 && \
    tar jxvf php-7.2.1.tar.bz2 && \
    mkdir /opt && mv php-7.2.1 /opt/php
    
WORKDIR /var/www/html

