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


all :	sensan senschek


.F.f :
	./cppp $(DEFINES) $< $*.f

######################################################################


nblnk.o :	nblnk.f
	$(F90) $(FFLAGS) nblnk.f


pgetcl.o :	pgetcl.f
	$(F90) $(FFLAGS) pgetcl.f


scheksub.o :	scheksub.f
	$(F90) $(FFLAGS) scheksub.f


sensan.o :	sensan.f
	$(F90) $(FFLAGS) sensan.f


senschek.o :	senschek.f
	$(F90) $(FFLAGS) senschek.f


sensub.o :	sensub.f
	$(F90) $(FFLAGS) sensub.f


space.o :	space.f
	$(F90) $(FFLAGS) space.f


######################################################################


sensan :	sensan.o sensub.o nblnk.o pgetcl.o space.o
	$(LD) $(LDFLAGS) -o sensan sensan.o sensub.o nblnk.o \
              pgetcl.o space.o


senschek :	senschek.o nblnk.o pgetcl.o scheksub.o space.o
	$(LD) $(LDFLAGS) -o senschek senschek.o nblnk.o pgetcl.o \
	scheksub.o space.o

