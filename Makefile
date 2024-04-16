all: build deploy

hugo:
	hugo serve --disableFastRender

css:
	node_modules/.bin/tailwindcss -i static/style.css -o static/style.out.css --minify --watch

build:
	hugo --cleanDestinationDir --minify

deploy:
	rsync -rP --delete public/ john@johnjago.com:/home/john/johnjago.com/

clean:
	rm -r public/
