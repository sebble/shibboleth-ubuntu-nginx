#!/bin/bash

set -e

mkdir -p tmp
cd tmp

wget http://shibboleth.net/downloads/log4shib/latest/log4shib-1.0.9.tar.gz && tar xzf log4shib-1.0.9.tar.gz
wget http://mirror.vorboss.net/apache/xerces/c/3/sources/xerces-c-3.1.3.tar.gz && tar xzf xerces-c-3.1.3.tar.gz
wget http://mirror.vorboss.net/apache/xerces/c/3/sources/xerces-c-tools-3.1.3.tar.gz && tar xzf xerces-c-tools-3.1.3.tar.gz
wget http://www.mirrorservice.org/sites/ftp.apache.org/santuario/c-library/xml-security-c-1.7.3.tar.gz && tar xzf xml-security-c-1.7.3.tar.gz
wget http://shibboleth.net/downloads/c++-opensaml/latest/xmltooling-1.5.5.tar.gz && tar xzf xmltooling-1.5.5.tar.gz
wget http://shibboleth.net/downloads/c++-opensaml/latest/opensaml-2.5.5.tar.gz && tar xzf opensaml-2.5.5.tar.gz

wget http://shibboleth.net/downloads/service-provider/latest/shibboleth-sp-2.5.5.tar.gz && tar xzf shibboleth-sp-2.5.5.tar.gz

rm *.tar.gz*

#zlib
#OpenSSL
#libcurl
