# Generated by mirage configure -t unix (Tue, 6 Feb 2018 14:36:15 GMT).

-include Makefile.user

OPAM = opam
DEPEXT ?= opam depext --yes --update mirage-unikernel-services-unix

.PHONY: all depend depends clean build
all:: build

depend depends::
	$(OPAM) pin add --no-action --yes mirage-unikernel-services-unix .
	$(DEPEXT)
	$(OPAM) install --yes --deps-only mirage-unikernel-services-unix
	$(OPAM) pin remove --no-action mirage-unikernel-services-unix

build::
	mirage build

clean::
	mirage clean

