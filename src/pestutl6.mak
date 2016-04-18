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

all :	supobspar.exe supobsprep.exe supobspar1.exe


string_utils.mod :	string_utils.f90
	$(F90) $(FFLAGS) string_utils.f90

string_utils.f90 :	string_utils.F
	./cppp $(DEFINES) string_utils.F string_utils.f90


containers.mod :	containers.f90
	$(F90) $(FFLAGS) containers.f90

containers.f90 :	containers.F
	./cppp $(DEFINES) containers.F containers.f90


array_btree.mod :	array_btree.f90
	$(F90) $(FFLAGS) array_btree.f90

array_btree.f90 :	array_btree.F
	./cppp $(DEFINES) array_btree.F array_btree.f90


pestdata.o :	pestdata.for
	$(F90) $(FFLAGS) pestdata.for

pestdata.for :	pestdata.F
	./cppp $(DEFINES) pestdata.F pestdata.for


supobsprep.o :	supobsprep.for pestdata.o string_utils.mod containers.mod array_btree.mod
	$(F90) $(FFLAGS) supobsprep.for

supobsprep.for :	supobsprep.F
	./cppp $(DEFINES) supobsprep.F supobsprep.for


supobspar.o :	supobspar.for pestdata.o
	$(F90) $(FFLAGS) supobspar.for

supobspar.for :	supobspar.F
	./cppp $(DEFINES) supobspar.F supobspar.for


supobspar1.o :	supobspar1.for pestdata.o
	$(F90) $(FFLAGS) supobspar1.for

supobspar1.for :	supobspar1.F
	./cppp $(DEFINES) supobspar1.F supobspar1.for


readpest.o :	readpest.for pestdata.o
	$(F90) $(FFLAGS) readpest.for

readpest.for :	readpest.F
	./cppp $(DEFINES) readpest.F readpest.for


lapack1.o :	lapack1.for
	$(F90) $(FFLAGS) lapack1.for

lapack1.for :	lapack1.F
	./cppp $(DEFINES) lapack1.F lapack1.for


openun.o :	openun.for
	$(F90) $(FFLAGS) openun.for

openun.for :	openun.F
	./cppp $(DEFINES) openun.F openun.for


space.o :	space.for
	$(F90) $(FFLAGS) space.for

space.for :	space.F
	./cppp $(DEFINES) space.F space.for


pgetcl.o :	pgetcl.for
	$(F90) $(FFLAGS) pgetcl.for

pgetcl.for :	pgetcl.F
	./cppp $(DEFINES) pgetcl.F pgetcl.for


compress.o :	compress.for
	$(F90) $(FFLAGS) compress.for

compress.for :	compress.F
	./cppp $(DEFINES) compress.F compress.for



supobsprep.exe :	supobsprep.o readpest.o lapack1.o \
                openun.o space.o compress.o pgetcl.o pestdata.o \
                string_utils.mod containers.mod array_btree.mod
	$(LD) $(LDFLAGS) -o supobsprep supobsprep.o readpest.o lapack1.o \
                openun.o space.o compress.o pgetcl.o pestdata.o string_utils.o \
                containers.o array_btree.o

supobspar.exe :	supobspar.o readpest.o lapack1.o \
                openun.o space.o compress.o pgetcl.o pestdata.o
	$(LD) $(LDFLAGS) -o supobspar supobspar.o readpest.o lapack1.o \
                openun.o space.o compress.o pgetcl.o pestdata.o

supobspar1.exe :	supobspar1.o readpest.o lapack1.o \
                openun.o space.o compress.o pgetcl.o pestdata.o
	$(LD) $(LDFLAGS) -o supobspar1 supobspar1.o readpest.o lapack1.o \
                openun.o space.o compress.o pgetcl.o pestdata.o

