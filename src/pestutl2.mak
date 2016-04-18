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

all :	parcalc obscalc


parcalc.f90 :	parcalc.F90
	./cppp $(DEFINES) parcalc.F90 parcalc.f90


parcalc.o :	parcalc.f90 inter.inc utility.inc modio.inc
	$(F90) $(FFLAGS) parcalc.f90


parcalc :	parcalc.o pgetcl.o
	$(LD) $(LDFLAGS) -o parcalc parcalc.o pgetcl.o



obscalc.f90 :	obscalc.F90
	./cppp $(DEFINES) obscalc.F90 obscalc.f90


obscalc.o :	obscalc.f90 inter.inc utility.inc modio.inc
	$(F90) $(FFLAGS) obscalc.f90


obscalc :	obscalc.o pgetcl.o
	$(LD) $(LDFLAGS) -o obscalc obscalc.o pgetcl.o



pgetcl.o :	pgetcl.f
	$(F90) $(FFLAGS) pgetcl.f
	
pgetcl.f :	pgetcl.F
	./cppp $(DEFINES) pgetcl.F pgetcl.f
