# Uncomment one of the blocks below.
#
# See "Notes on the UNIX Version of PEST" for instructions.
#

######################################################################
# PLATFORM  UNIX
# COMPILER: GNU g95 FORTRAN95 compiler

DEFINES= -DUNIX -DFLUSHFILE -DSLEEP
F90=gfortran
LD=gfortran
FFLAGS=-c -O0 -static
LDFLAGS=-static
######################################################################

######################################################################
# PLATFORM  UNIX
# COMPILER: General Unix Compiler

#DEFINES= -DUNIX -DFLUSHFILE
#F90=f90
#LD=f90
#FFLAGS=-c -O0
#LDFLAGS=
######################################################################

######################################################################
# PLATFORM  UNIX
# COMPILER: Portland Group compiler

#DEFINES= -DUNIX -DFLUSHFILE
#F90=pgf90
#LD=pgf90
#FFLAGS=-c -O0
#LDFLAGS=
######################################################################

######################################################################
# PLATFORM  UNIX
# COMPILER: MIPSpro 7 Fortran 90 compiler

#DEFINES= -DUNIX
#F90=f90
#LD=f90
#FFLAGS=-c -O0
#LDFLAGS=
######################################################################

######################################################################
# PLATFORM  UNIX
# COMPILER: Lahey/Fujitsu Optimizing Fortran 95 Compiler

#DEFINES= -DUNIX -DFLUSHFILE
#F90=lf95
#LD=lf95
#FFLAGS=-c -O0
#LDFLAGS=-static
######################################################################



######################################################################
# DON'T EDIT BELOW THIS LINE
######################################################################

all :	pest predvar1 predvar1a predvar1b predvar1c predvar2 predvar3 predvar4 predvar5 \
	predunc1 predunc4 predunc5 predunc6 predunc7 infstat infstat1 wtsenout \
	pnulpar muljcosen identpar supcalc simcase predunc6 predunc7 ssstat parvar1 calmaintain

.F.f :
	./cppp $(DEFINES) $< $*.f



cgsolve.o:	cgsolve.f
	$(F90) $(FFLAGS) cgsolve.f


common.o:	common.f
	$(F90) $(FFLAGS) common.f


compress.o:	compress.f
	$(F90) $(FFLAGS) compress.f


dercalc.o:	dercalc.f
	$(F90) $(FFLAGS) dercalc.f


drealrd.o:	drealrd.f
	$(F90) $(FFLAGS) drealrd.f


lapack1.o:	lapack1.f
	$(F90) $(FFLAGS) lapack1.f


linpos.o:	linpos.f
	$(F90) $(FFLAGS) linpos.f


modrun.o:	modrun.f
	$(F90) $(FFLAGS) modrun.f


ms_stubs.o:	ms_stubs.f
	$(F90) $(FFLAGS) ms_stubs.f


optwt.o:	optwt.f
	$(F90) $(FFLAGS) optwt.f


pardef.o:	pardef.f PESTDATA.mod
	$(F90) $(FFLAGS) pardef.f


pest.o:	pest.f PESTDATA.mod
	$(F90) $(FFLAGS) pest.f


PESTDATA.mod:	pestdata.f
	$(F90) $(FFLAGS) pestdata.f


pestsub1.o:	pestsub1.f
	$(F90) $(FFLAGS) pestsub1.f


pestsub2.o:	pestsub2.f  PESTDATA.mod
	$(F90) $(FFLAGS) pestsub2.f


pgetcl.o:	pgetcl.f
	$(F90) $(FFLAGS) pgetcl.f


readpest.o:	readpest.f PESTDATA.mod
	$(F90) $(FFLAGS) readpest.f


runpest.o:	runpest.f PESTDATA.mod
	$(F90) $(FFLAGS) runpest.f


space.o:	space.f
	$(F90) $(FFLAGS) space.f


pestwait.o:	pestwait.f
	$(F90) $(FFLAGS) pestwait.f


writall.o:	writall.f PESTDATA.mod
	$(F90) $(FFLAGS) writall.f


writint.o:	writint.f
	$(F90) $(FFLAGS) writint.f


writsig.o:	writsig.f
	$(F90) $(FFLAGS) writsig.f


predvar1.o:	predvar1.f PESTDATA.mod
	$(F90) $(FFLAGS) predvar1.f


predvar1a.o:	predvar1a.f PESTDATA.mod
	$(F90) $(FFLAGS) predvar1a.f


predvar1b.o:	predvar1b.f PESTDATA.mod
	$(F90) $(FFLAGS) predvar1b.f


predvar1c.o:	predvar1c.f PESTDATA.mod
	$(F90) $(FFLAGS) predvar1c.f


parvar1.o:	parvar1.f PESTDATA.mod
	$(F90) $(FFLAGS) parvar1.f


predvar2.o:	predvar2.f PESTDATA.mod
	$(F90) $(FFLAGS) predvar2.f


predvar3.o:	predvar3.f PESTDATA.mod
	$(F90) $(FFLAGS) predvar3.f


predvar4.o:	predvar4.f PESTDATA.mod
	$(F90) $(FFLAGS) predvar4.f


predvar5.o:	predvar5.f PESTDATA.mod
	$(F90) $(FFLAGS) predvar5.f


predunc1.o:	predunc1.f PESTDATA.mod
	$(F90) $(FFLAGS) predunc1.f


predunc4.o:	predunc4.f PESTDATA.mod
	$(F90) $(FFLAGS) predunc4.f


predunc5.o:	predunc5.f PESTDATA.mod
	$(F90) $(FFLAGS) predunc5.f


predunc6.o:	predunc6.f PESTDATA.mod
	$(F90) $(FFLAGS) predunc6.f


predunc7.o:	predunc7.f PESTDATA.mod
	$(F90) $(FFLAGS) predunc7.f


infstat.o:	infstat.f PESTDATA.mod
	$(F90) $(FFLAGS) infstat.f


infstat1.o:	infstat1.f PESTDATA.mod
	$(F90) $(FFLAGS) infstat1.f


calmaintain.o:	calmaintain.f PESTDATA.mod
	$(F90) $(FFLAGS) calmaintain.f


wtsenout.o:	wtsenout.f PESTDATA.mod
	$(F90) $(FFLAGS) wtsenout.f


pnulpar.o:	pnulpar.f PESTDATA.mod
	$(F90) $(FFLAGS) pnulpar.f


muljcosen.o:	muljcosen.f PESTDATA.mod
	$(F90) $(FFLAGS) muljcosen.f


identpar.o:	identpar.f PESTDATA.mod
	$(F90) $(FFLAGS) identpar.f


supcalc.o:	supcalc.f PESTDATA.mod
	$(F90) $(FFLAGS) supcalc.f


ssstat.o:	ssstat.f PESTDATA.mod
	$(F90) $(FFLAGS) ssstat.f


simcase.o:	simcase.f PESTDATA.mod
	$(F90) $(FFLAGS) simcase.f



openun.o:	openun.f
	$(F90) $(FFLAGS) openun.f


certfile.o :	certfile.f
	$(F90) $(FFLAGS) certfile.f


lsqr.o :	lsqr.f
	$(F90) $(FFLAGS) lsqr.f


lsqr_orig.o :	lsqr_orig.f
	$(F90) $(FFLAGS) lsqr_orig.f


orthog.o :	orthog.f
	$(F90) $(FFLAGS) orthog.f



##################################################################################

pest :	pest.o pestsub1.o pestsub2.o dercalc.o modrun.o writall.o \
		linpos.o lapack1.o writsig.o common.o \
		pgetcl.o pestwait.o writint.o pardef.o\
                drealrd.o space.o optwt.o cgsolve.o compress.o \
                readpest.o runpest.o lsqr.o orthog.o ms_stubs.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o pest \
                pest.o pestsub1.o pestsub2.o dercalc.o modrun.o writall.o \
		linpos.o lapack1.o writsig.o common.o \
		pgetcl.o pestwait.o writint.o pardef.o\
                drealrd.o space.o optwt.o cgsolve.o compress.o \
                readpest.o runpest.o lsqr.o orthog.o ms_stubs.o pestdata.o

predvar1 :	predvar1.o readpest.o lapack1.o openun.o space.o compress.o \
	        certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predvar1 predvar1.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


predvar1a :	predvar1a.o readpest.o lapack1.o openun.o space.o compress.o \
	        certfile.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predvar1a predvar1a.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o


predvar1b :	predvar1b.o readpest.o lapack1.o openun.o space.o compress.o \
	        certfile.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predvar1b predvar1b.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o


predvar1c :	predvar1c.o readpest.o lapack1.o openun.o space.o compress.o \
	        certfile.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predvar1c predvar1c.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o


parvar1 :	parvar1.o readpest.o lapack1.o openun.o space.o compress.o \
	        certfile.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o parvar1 parvar1.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o


predvar2 :	predvar2.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predvar2 predvar2.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


predvar3 :	predvar3.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predvar3 predvar3.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


predvar4 :	predvar4.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predvar4 predvar4.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


predvar5 :	predvar5.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predvar5 predvar5.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


predunc1 :	predunc1.o readpest.o \
                openun.o space.o compress.o certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predunc1 predunc1.o readpest.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


predunc4 :	predunc4.o readpest.o \
                openun.o space.o compress.o certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predunc4 predunc4.o readpest.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


predunc5 :	predunc5.o readpest.o \
                openun.o space.o compress.o certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predunc5 predunc5.o readpest.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


predunc6 :	predunc6.o readpest.o \
                openun.o space.o compress.o certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predunc6 predunc6.o readpest.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


predunc7 :	predunc7.o readpest.o \
                openun.o space.o compress.o certfile.o linpos.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o predunc7 predunc7.o readpest.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


infstat :	infstat.o readpest.o lapack1.o linpos.o \
	        openun.o space.o compress.o pgetcl.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o infstat infstat.o readpest.o lapack1.o linpos.o \
                openun.o space.o compress.o pgetcl.o pestdata.o


infstat1 :	infstat1.o readpest.o lapack1.o linpos.o \
	        openun.o space.o compress.o pgetcl.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o infstat1 infstat1.o readpest.o lapack1.o linpos.o \
                openun.o space.o compress.o pgetcl.o pestdata.o


calmaintain :	calmaintain.o readpest.o lapack1.o lsqr_orig.o \
	          openun.o space.o compress.o pgetcl.o PESTDATA.mod
	$(LD) $(LDFLAGS) calmaintain.o readpest.o lapack1.o lsqr_orig.o \
                openun.o space.o compress.o pgetcl.o pestdata.o


muljcosen :	muljcosen.o readpest.o lapack1.o linpos.o \
	        openun.o space.o compress.o pgetcl.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o muljcosen muljcosen.o readpest.o lapack1.o linpos.o \
                openun.o space.o compress.o pgetcl.o pestdata.o


wtsenout :	wtsenout.o readpest.o lapack1.o \
		openun.o space.o compress.o  pgetcl.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o wtsenout wtsenout.o readpest.o lapack1.o \
		openun.o space.o compress.o pgetcl.o pestdata.o


pnulpar :	pnulpar.o readpest.o lapack1.o \
                openun.o space.o compress.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o pnulpar pnulpar.o readpest.o lapack1.o \
                openun.o space.o compress.o pestdata.o


identpar :	identpar.o readpest.o lapack1.o openun.o space.o compress.o \
	        linpos.o pgetcl.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o identpar identpar.o readpest.o lapack1.o \
                openun.o space.o compress.o pgetcl.o pestdata.o linpos.o


supcalc :	supcalc.o readpest.o lapack1.o openun.o space.o compress.o \
	        linpos.o certfile.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o supcalc supcalc.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


ssstat :	ssstat.o readpest.o lapack1.o openun.o space.o compress.o \
	        linpos.o certfile.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o ssstat ssstat.o readpest.o lapack1.o \
                openun.o space.o compress.o certfile.o pestdata.o linpos.o


simcase :	simcase.o readpest.o openun.o space.o compress.o pgetcl.o \
	        PESTDATA.mod
	$(LD) $(LDFLAGS) -o simcase simcase.o readpest.o pgetcl.o \
                openun.o space.o compress.o pestdata.o
