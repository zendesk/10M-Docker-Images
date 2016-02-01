#!/bin/bash

# Setup
ORIGINAL_DIR=`pwd`
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $SCRIPT_DIR/..
cd base/build/php/5.6/composer/
make build-cascade

cd $SCRIPT_DIR/..
cd base/build/php/5.6/fpm/composer/
make build-cascade

cd $SCRIPT_DIR/..
cd base/build/nginx/nginx_redirect_to_ssl
make build-cascade

# back to where we were
cd $ORIGINAL_DIR
