name = jsonrpc2
prefix = /usr/local

manfile = $(prefix)/share/man/man1/$(name).1
programs = $(patsubst bin/%,$(prefix)/bin/%,$(wildcard bin/*))

all:
install: $(manfile) $(programs)
uninstall:
	-rm $(manfile) $(programs)
$(prefix)/bin/%: bin/%
	install $< $@
$(manfile): $(name).1
	mkdir -p $(dir $@) && install -m644 $< $@
