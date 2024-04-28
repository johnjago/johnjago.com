all: build deploy

hugo:
	hugo serve

css:
	node_modules/.bin/tailwindcss -i assets/style.css -o assets/style.out.css --minify --watch

build:
	hugo --cleanDestinationDir --minify

deploy:
	rsync -rP --delete public/ john@johnjago.com:/home/john/johnjago.com/

clean:
	rm -r public/
