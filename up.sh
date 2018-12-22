#!/bin/bash

html-minifier src/index.html -o dist/index.html --collapse-whitespace
sass src/*.css dist/style.css --no-source-map -s compressed
cp src/main.js dist/main.js
scp dist/* do:/var/www/html/johnjago.com/public/
