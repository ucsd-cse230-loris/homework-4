COQMFFLAGS := -Q . PLF  

ALLVFILES := Maps.v MapsTest.v Imp.v ImpTest.v Hoare.v HoareTest.v 
# Maps.v Imp.v Preface.v Equiv.v Hoare.v Hoare2.v HoareAsLogic.v Smallstep.v Types.v Stlc.v StlcProp.v MoreStlc.v Sub.v Typechecking.v Records.v References.v RecordSub.v Norm.v PE.v Postscript.v Bib.v LibTactics.v UseTactics.v UseAuto.v  MapsTest.v  ImpTest.v  PrefaceTest.v  EquivTest.v  HoareTest.v  Hoare2Test.v  HoareAsLogicTest.v  SmallstepTest.v  TypesTest.v  StlcTest.v  StlcPropTest.v  MoreStlcTest.v  SubTest.v  TypecheckingTest.v  RecordsTest.v  ReferencesTest.v  RecordSubTest.v  NormTest.v  PETest.v  PostscriptTest.v  BibTest.v  LibTacticsTest.v  UseTacticsTest.v  UseAutoTest.v

build: Makefile.coq
	$(MAKE) -f Makefile.coq

clean::
	if [ -e Makefile.coq ]; then $(MAKE) -f Makefile.coq cleanall; fi
	$(RM) $(wildcard Makefile.coq Makefile.coq.conf) 

Makefile.coq:
	coq_makefile $(COQMFFLAGS) -o Makefile.coq $(ALLVFILES)

autograde: Maps.vo Imp.vo Hoare.vo
	coqc -Q . PLF MapsTest.v
	coqc -Q . PLF ImpTest.v
	coqc -Q . PLF HoareTest.v

-include Makefile.coq

.PHONY: build clean
