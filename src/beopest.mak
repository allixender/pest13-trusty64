# Uncomment one of the blocks below.
#
# See "Notes on the UNIX Version of PEST" for instructions.
#

######################################################################
# PLATFORM  UNIX
# COMPILER: GNU g95 FORTRAN95 compiler

DEFINES= -DBEO -DUNIX -DFLUSHFILE -DPARALLEL -DSLEEP
C=gcc
CFLAGS=-c
F90=gfortran
LD=gfortran
FFLAGS=-c -O1 -static
LDFLAGS=-static
######################################################################



######################################################################
# DON'T EDIT BELOW THIS LINE
######################################################################

.SUFFIXES:
.SUFFIXES:	.o .f .F .c .C

all :	beopest


.F.f:
	./cppp $(DEFINES) $< $*.f

.C.c:
	./cppp $(DEFINES) $< $*.c

ip.o :	ip.c
	$(C) $(CFLAGS) ip.c


common_mod.o :	common_mod.f
	$(F90) $(FFLAGS) common_mod.f

beorun.o :	beorun.f pestdata.o common_mod.o
	$(F90) $(FFLAGS) beorun.f


beopest.o :	beopest.f pardef.o pestdata.o
	$(F90) $(FFLAGS) beopest.f



modrun.o:	modrun.f common_mod.o
	$(F90) $(FFLAGS) modrun.f


pardef.o:	pardef.f pestdata.o common_mod.o
	$(F90) $(FFLAGS) pardef.f


linpos.o:	linpos.f
	$(F90) $(FFLAGS) linpos.f


lsqr.o:	lsqr.f
	$(F90) $(FFLAGS) lsqr.f


orthog.o:	orthog.f common_mod.o
	$(F90) $(FFLAGS) orthog.f


lapack1.o:	lapack1.f
	$(F90) $(FFLAGS) lapack1.f


pest.o:	pest.f pestdata.o beopest.o pardef.o
	$(F90) $(FFLAGS) pest.f


runpest.o:	runpest.f pestdata.o common_mod.o
	$(F90) $(FFLAGS) runpest.f


pestsub1.o:	pestsub1.f
	$(F90) $(FFLAGS) pestsub1.f


pestsub2.o:	pestsub2.f pestdata.o common_mod.o
	$(F90) $(FFLAGS) pestsub2.f


readpest.o:	readpest.f pestdata.o
	$(F90) $(FFLAGS) readpest.f


dercalc.o:	dercalc.f common_mod.o
	$(F90) $(FFLAGS) dercalc.f


writall.o:	writall.f pestdata.o common_mod.o
	$(F90) $(FFLAGS) writall.f


writsig.o:	writsig.f
	$(F90) $(FFLAGS) writsig.f


common.o:	common.f
	$(F90) $(FFLAGS) common.f


pgetcl.o:	pgetcl.f
	$(F90) $(FFLAGS) pgetcl.f


nblnk.o:	nblnk.f
	$(F90) $(FFLAGS) nblnk.f


numdays.o:	numdays.f
	$(F90) $(FFLAGS) numdays.f


pestwait.o:	pestwait.f
	$(F90) $(FFLAGS) pestwait.f


space.o:	space.f
	$(F90) $(FFLAGS) space.f

writint.o:	writint.f
	$(F90) $(FFLAGS) writint.f


parpest.o:	parpest.f common_mod.o
	$(F90) $(FFLAGS) parpest.f


sstop.o:	sstop.f common_mod.o
	$(F90) $(FFLAGS) sstop.f


drealrd.o:	drealrd.f
	$(F90) $(FFLAGS) drealrd.f


optwt.o:	optwt.f common_mod.o
	$(F90) $(FFLAGS) optwt.f


compress.o:	compress.f
	$(F90) $(FFLAGS) compress.f


ms_stubs.o:	ms_stubs.f
	$(F90) $(FFLAGS) ms_stubs.f


pestdata.o:	pestdata.f
	$(F90) $(FFLAGS) pestdata.f


beopest:	pest.o pestsub1.o pestsub2.o dercalc.o modrun.o writall.o \
                linpos.o lapack1.o writsig.o common.o pgetcl.o parpest.o numdays.o \
                writint.o drealrd.o pestwait.o \
                space.o optwt.o compress.o pardef.o ms_stubs.o \
                readpest.o runpest.o lsqr.o orthog.o pestdata.o beopest.o beorun.o ip.o
	$(LD) $(LDFLAGS) -o beopest pest.o pestsub1.o pestsub2.o dercalc.o modrun.o writall.o \
                linpos.o lapack1.o writsig.o common.o pgetcl.o parpest.o numdays.o \
                writint.o drealrd.o pestwait.o \
                space.o optwt.o compress.o pardef.o ms_stubs.o \
                readpest.o runpest.o lsqr.o orthog.o pestdata.o beopest.o beorun.o ip.o


#EOF
