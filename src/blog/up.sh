#!/bin/bash

hugo
rsync -av public/ do:/var/www/html/johnjago.com/public/blog/
