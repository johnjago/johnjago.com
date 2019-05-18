#!/bin/bash

mkdir -p dist/blog/
cd src/blog/ && hugo && mv public/* ../../dist/blog/ && cd ..

# Add some files that are not part of the Hugo site
# favicon.png is the full size image
rsync -av --exclude=blog/ --exclude=favicon.png . ../dist/

# Deploy to server
rsync --dry-run -azvP --delete dist/ $USER@johnjago.com:$WWW/
