#!/bin/bash

hugo
rsync -av --delete public/ do:/var/www/html/johnjago.com/public/blog/
rm -rf public/
