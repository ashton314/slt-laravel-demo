FROM ubuntu:latest

RUN apt update -y && apt upgrade -y

RUN apt install -y php7.0 \
    php7.0-zip php7.0-cli php7.0-mbstring php7.0-mysql php7.0-json php7.0-curl \
    git composer npm phpunit

RUN apt install -y curl netcat

RUN composer global require "laravel/installer"

ENV PATH=$PATH:/root/.composer/vendor/bin 

# WORKDIR /app
# COPY . /app
# RUN composer install

# CMD php artisan serve --host=0.0.0.0 --port=8000

EXPOSE 8000
