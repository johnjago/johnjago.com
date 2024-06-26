tailwind = node_modules/.bin/tailwindcss -i assets/style.css -o assets/style.out.css --minify

write:
	hugo serve --disableFastRender

dev:
	(hugo serve --disableFastRender & ${tailwind} --watch)

css:
	${tailwind}

site:
	hugo --cleanDestinationDir --minify

deploy:
	rsync -rP --delete public/ john@johnjago.com:/home/john/johnjago.com/

publish: css site deploy

clean:
	rm -rv public/
