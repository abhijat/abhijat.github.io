build:
	hugo --minify

push:
	git add . && git commit -am "update" && git push origin main

all: build push