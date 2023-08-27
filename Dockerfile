# docker buildx build --platform=linux/amd64,linux/ppc64le,linux/s390x,linux/386,linux/arm/v7 -t fpod/php74-fpm-composer2 .
FROM php:7.4-fpm
COPY --from=composer/composer:2-bin /composer /usr/bin/composer
RUN apt update; \
    apt install -y --no-install-recommends \
        git \
        unzip \
        zip \
    ;
