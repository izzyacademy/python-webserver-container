#!/bin/bash

cd /document-root

CURRENT_FOLDER=`pwd`

echo "Current folder I am running from is ${CURRENT_FOLDER}"

python -m SimpleHTTPServer 8000

