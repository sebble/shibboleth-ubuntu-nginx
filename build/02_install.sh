#!/bin/bash

set -e
sudo apt-get -y install liblog4shib1 libmemcached10 libsaml8 libshibsp6 libxerces-c3.1 libxmltooling6 ||
sudo apt-get -y install liblog4shib1 libmemcached11 libsaml8 libshibsp6 libxerces-c3.1 libxmltooling6;
