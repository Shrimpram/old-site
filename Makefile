build:
	hugo
	hugo -d ../gh-pages

publish: build
	cd ../gh-pages &&\
		git add --all && \
		git commit -m "Publish" && \
		git push -u origin master && \
		git push

serve:
	hugo serve
