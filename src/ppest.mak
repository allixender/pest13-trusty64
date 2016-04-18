# Uncomment one of the blocks below.
#
# See "Notes on the UNIX Version of PEST" for instructions.
#

######################################################################
# PLATFORM  UNIX
# COMPILER: GNU g95 FORTRAN95 compiler

DEFINES= -DUNIX -DFLUSHFILE -DPARALLEL -DSLEEP
F90=gfortran
LD=gfortran
FFLAGS=-c -O0 -static
LDFLAGS=-static
######################################################################

######################################################################
# PLATFORM  UNIX
# COMPILER: General Unix Compiler

#DEFINES= -DUNIX -DFLUSHFILE -DPARALLEL
#F90=f90
#LD=f90
#FFLAGS=-c -O0
#LDFLAGS=
######################################################################

######################################################################
# PLATFORM  UNIX
# COMPILER: Portland Group compiler

#DEFINES= -DUNIX -DFLUSHFILE -DPARALLEL
#F90=pgf90
#LD=pgf90
#FFLAGS=-c -O0
#LDFLAGS=
######################################################################

######################################################################
# PLATFORM  UNIX
# COMPILER: MIPSpro 7 Fortran 90 compiler

#DEFINES= -DUNIX -DPARALLEL
#F90=f90
#LD=f90
#FFLAGS=-c -O0
#LDFLAGS=
######################################################################

######################################################################
# PLATFORM  UNIX
# COMPILER: Lahey/Fujitsu Optimizing Fortran 95 Compiler

#DEFINES= -DUNIX -DFLUSHFILE -DPARALLEL
#F90=lf95
#LD=lf95
#FFLAGS=-c -O0
#LDFLAGS=-static
######################################################################



######################################################################
# DON'T EDIT BELOW THIS LINE
######################################################################


all :	ppest

.F.f :
	./cppp $(DEFINES) $< $*.f



cgsolve.o :	cgsolve.f
	$(F90) $(FFLAGS) cgsolve.f


common.o :	common.f
	$(F90) $(FFLAGS) common.f


compress.o :	compress.f
	$(F90) $(FFLAGS) compress.f


dercalc.o :	dercalc.f
	$(F90) $(FFLAGS) dercalc.f


drealrd.o :	drealrd.f
	$(F90) $(FFLAGS) drealrd.f


lapack1.o :	lapack1.f
	$(F90) $(FFLAGS) lapack1.f


linpos.o :	linpos.f
	$(F90) $(FFLAGS) linpos.f


modrun.o :	modrun.f
	$(F90) $(FFLAGS) modrun.f


ms_stubs.o :	ms_stubs.f
	$(F90) $(FFLAGS) ms_stubs.f


numdays.o :	numdays.f
	$(F90) $(FFLAGS) numdays.f


optwt.o :	optwt.f
	$(F90) $(FFLAGS) optwt.f


pardef.o :	pardef.f PESTDATA.mod
	$(F90) $(FFLAGS) pardef.f


parpest.o :	parpest.f
	$(F90) $(FFLAGS) parpest.f


pest.o :	pest.f PESTDATA.mod
	$(F90) $(FFLAGS) pest.f


PESTDATA.mod :	pestdata.f
	$(F90) $(FFLAGS) pestdata.f


pestsub1.o :	pestsub1.f
	$(F90) $(FFLAGS) pestsub1.f


pestsub2.o :	pestsub2.f PESTDATA.mod
	$(F90) $(FFLAGS) pestsub2.f


pgetcl.o :	pgetcl.f
	$(F90) $(FFLAGS) pgetcl.f


readpest.o :	readpest.f PESTDATA.mod
	$(F90) $(FFLAGS) readpest.f


runpest.o :	runpest.f PESTDATA.mod
	$(F90) $(FFLAGS) runpest.f


space.o :	space.f
	$(F90) $(FFLAGS) space.f


pestwait.o :	pestwait.f
	$(F90) $(FFLAGS) pestwait.f


writall.o :	writall.f PESTDATA.mod
	$(F90) $(FFLAGS) writall.f


writint.o :	writint.f
	$(F90) $(FFLAGS) writint.f


writsig.o :	writsig.f
	$(F90) $(FFLAGS) writsig.f


lsqr.o :	lsqr.f
	$(F90) $(FFLAGS) lsqr.f


orthog.o :	orthog.f
	$(F90) $(FFLAGS) orthog.f




ppest :	pest.o pestsub1.o pestsub2.o dercalc.o modrun.o writall.o \
		linpos.o lapack1.o writsig.o common.o \
		pgetcl.o parpest.o numdays.o \
                writint.o drealrd.o pestwait.o \
                space.o optwt.o cgsolve.o compress.o pardef.o \
                readpest.o runpest.o lsqr.o orthog.o ms_stubs.o PESTDATA.mod
	$(LD) $(LDFLAGS) -o ppest  \
                pest.o pestsub1.o pestsub2.o dercalc.o modrun.o writall.o \
		linpos.o lapack1.o writsig.o common.o \
		pgetcl.o parpest.o numdays.o \
                writint.o drealrd.o pestwait.o \
                space.o optwt.o cgsolve.o compress.o pardef.o \
                readpest.o runpest.o lsqr.o orthog.o ms_stubs.o pestdata.o
