#!/bin/bash

# Remove old temporary directories if present
rm -r dist/

# Create temporary build directories
cp -R src tmp/
mkdir dist/

# Run the build for the Hugo blog, then go up to project site dir
cd tmp/blog/ && hugo && mv public ../../dist/blog/ && cd ..

# Insert hash into project site CSS filename for cache busting
./build.sh

# Move project site into dist/
rsync -av \
    --exclude=blog/ \
    --exclude=style.css \
    --exclude=build.sh \
    . ../dist/ && cd ..

# Upload to server
rsync -rP --delete \
    --exclude=/deformat \
    --exclude=/musearch \
    dist/ root@johnjago.com:/var/www/johnjago.com/

# Clean up temporary directories, leaving dist/ for debugging
rm -r tmp/
