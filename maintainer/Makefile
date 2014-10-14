name = jsonrpc2
RONN = docker run --rm -i $(name)-maintainer ronn --pipe
all: ../$(name).1
.dockerimage: Dockerfile
	docker build -t $(name)-maintainer - <$< && touch $@
%.1: %.1.ronn .dockerimage
	$(RONN) --roff <$< >$@ || rm $@
%.1.html: %.1.ronn .dockerimage
	$(RONN) --html <$< >$@ || rm $@
gh-pages: ../index.html
	git add -f $< && git checkout -m $@
	-changes=`git diff --shortstat --cached` && \
	  [ "$$changes" ] && git commit -m "$$changes" || echo No changes.
	git checkout -
../index.html: ../$(name).1.html
	cp $< $@
.INTERMEDIATE: ../index.html ../$(name).1.html
