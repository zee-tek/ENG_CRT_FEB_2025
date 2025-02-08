#!/bin/bash

source vars
echo "installing httpd version: $httpd_version"

yum install -y httpd-$httpd_version
