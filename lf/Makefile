COQMFFLAGS := -Q . LF  

ALLVFILES := Maps.v MapsTest.v Imp.v ImpTest.v

build: Makefile.coq
	$(MAKE) -f Makefile.coq

clean::
	if [ -e Makefile.coq ]; then $(MAKE) -f Makefile.coq cleanall; fi
	$(RM) $(wildcard Makefile.coq Makefile.coq.conf) imp.ml imp.mli imp1.ml imp1.mli imp2.ml imp2.mli

Makefile.coq:
	coq_makefile $(COQMFFLAGS) -o Makefile.coq $(ALLVFILES)

autograde: Maps.vo Imp.vo
	coqc -Q . LF MapsTest.v
	coqc -Q . LF ImpTest.v

-include Makefile.coq

.PHONY: build clean autograde
