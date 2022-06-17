FROM php:7.4-fpm

ARG WEB_USER
ARG WEB_GROUP
ARG PHP_ROOT_DIR

COPY www.conf ${PHP_ROOT_DIR}/php-fpm.d/www.conf

RUN docker-php-ext-install mysqli

RUN usermod -u 1000 ${WEB_USER} \
    && groupmod -g 1000 ${WEB_GROUP} \
    && chgrp -R staff ${PHP_ROOT_DIR}/php-fpm.d/www.conf

# # Install dependencies

# RUN apt-get update && apt-get install -y 

# # Clear cache
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# ENV ACCEPT_EULA=Y
# # Microsoft SQL Server Prerequisites
# RUN apt-get update \
#     && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
#     && curl https://packages.microsoft.com/config/debian/9/prod.list \
#     > /etc/apt/sources.list.d/mssql-release.list \
#     && apt-get install -y --no-install-recommends \
#     locales \
#     apt-transport-https \
#     && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
#     && locale-gen \
#     && apt-get update \
#     && apt-get -y --no-install-recommends install \
#     unixodbc-dev \
#     msodbcsql17

# RUN docker-php-ext-install mbstring pdo pdo_mysql \
#     && pecl install sqlsrv pdo_sqlsrv xdebug \
#     && docker-php-ext-enable sqlsrv pdo_sqlsrv xdebug

# # Install extensions
# #RUN docker-php-ext-install pdo_mysql zip exif pcntl
# #RUN docker-php-ext-configure gd --with-freetype --with-jpeg
# #RUN docker-php-ext-install gd