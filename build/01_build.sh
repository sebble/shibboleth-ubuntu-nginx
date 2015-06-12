#!/bin/bash

set -e

#log4shib-1.0.8
#xerces-c-3.1.1
#xml-security-c-1.7.2
#xmltooling-1.5.3
#opensaml-2.5.3

# xerces-c-tools-3.1.1
#sudo apt-get install fastcgi-devel
sudo apt-get update
sudo apt-get -y install libboost-dev libcurl4-openssl-dev libfcgi-dev
sudo mkdir -p /opt/shibboleth-sp
sudo chmod 777 /opt/shibboleth-sp

cd tmp/log4shib-1.0.9 && ./configure --disable-static --disable-doxygen --prefix=/opt/shibboleth-sp && make && make install && cd ../.. && \
cd tmp/xerces-c-3.1.2 && ./configure --prefix=/opt/shibboleth-sp --disable-netaccessor-libcurl && make && make install && cd ../.. && \
cd tmp/xml-security-c-1.7.3 && ./configure --without-xalan --with-xerces=/opt/shibboleth-sp --disable-static --prefix=/opt/shibboleth-sp && make && make install && cd ../.. && \
cd tmp/xmltooling-1.5.4 && ./configure --with-log4shib=/opt/shibboleth-sp --prefix=/opt/shibboleth-sp -C && make && make install && cd ../.. && \
cd tmp/opensaml-2.5.4 && ./configure --with-log4shib=/opt/shibboleth-sp --prefix=/opt/shibboleth-sp -C && make && make install && cd ../.. && \
#
#cd shibboleth-sp-2.5.3 && ./configure --with-log4shib=/opt/shibboleth-sp --enable-apache-13 --with-apxs=/usr/local/apache/bin/apxs --enable-apache-20 --with-apxs2=/usr/local/apache2/bin/apxs --prefix=/opt/shibboleth-sp
cd tmp/shibboleth-sp-2.5.4 && ./configure --with-log4shib=/opt/shibboleth-sp --with-fastcgi --prefix=/opt/shibboleth-sp && make && make install

sudo chmod 755 /opt/shibboleth-sp

