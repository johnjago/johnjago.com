#!/bin/bash

hugo
scp -pr public/* do:/var/www/html/johnjago.com/public/blog/
