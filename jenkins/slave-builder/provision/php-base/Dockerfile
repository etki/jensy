FROM intermediate/slave-base

RUN apt-get install -y -qq \
    php5-cli \
    git \
    curl \
    libmcrypt-dev \
    libreadline-dev \
    libtidy-dev \
    libbz2-dev \
    libicu-dev \
    libxml2-dev \
    libcurl4-openssl-dev \
    libjpeg-dev \
    libpng-dev \
    libxpm-dev \
    libmysqlclient-dev \
    libpq-dev \
    libicu-dev \
    libfreetype6-dev \
    libldap2-dev \
    libxslt-dev \
    libsqlite3-dev \
    libmysqlclient-dev \
    libreadline-dev \
    libzip-dev \
    libmhash-dev \
    libpcre3-dev \
    libfreetype6-dev \
    build-essential

RUN curl -L -o /usr/bin/phpbrew https://github.com/phpbrew/phpbrew/raw/master/phpbrew && chmod a+x /usr/bin/phpbrew
RUN phpbrew init && echo "source ~/.phpbrew/bashrc" >> ~/.bashrc

# RUN phpbrew install 5.3.28 +mysql +ctype +curl +fileinfo +ftp +gd +iconv +mbstring

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir /usr/local/composer

ENV COMPOSER_HOME /usr/local/composer
ENV COMPOSER_BIN_DIR bin
ENV PATH /usr/local/composer/bin/:$PATH

RUN composer global require block8/php-docblock-checker:~1.0
