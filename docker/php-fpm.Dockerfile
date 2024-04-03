FROM bitnami/php-fpm:8.2

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install zip unzip