all: build deploy

run:
	hugo serve

build:
	hugo --cleanDestinationDir

deploy:
	rsync -rP --delete public/ john@johnjago.com:/home/john/johnjago.com/

clean:
	rm -r public/
