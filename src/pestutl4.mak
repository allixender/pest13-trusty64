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


all :	cov2cor covcond mat2srf matadd matcolex matdiag matdiff matinvp matjoinc \
	matjoind matjoinr matorder matprod matquad matrow matsmul \
	matspec matsvd matsym mattrans matxtxi matxtxix mat2jco


.F.f :
	./cppp $(DEFINES) $< $*.f

######################################################################

cov2cor.o :	cov2cor.f matman.f
	$(F90) $(FFLAGS) cov2cor.f

covcond.o :	covcond.f matman.f
	$(F90) $(FFLAGS) covcond.f

mat2jco.o :	mat2jco.f matman.f
	$(F90) $(FFLAGS) mat2jco.f

mat2srf.o :	mat2srf.f
	$(F90) $(FFLAGS) mat2srf.f

matadd.o :	matadd.f matman.f
	$(F90) $(FFLAGS) matadd.f
	
matcolex.o :	matcolex.f matman.f
	$(F90) $(FFLAGS) matcolex.f

matdiag.o :	matdiag.f matman.f
	$(F90) $(FFLAGS) matdiag.f

matdiff.o :	matdiff.f matman.f
	$(F90) $(FFLAGS) matdiff.f

matinvp.o :	matinvp.f matman.f
	$(F90) $(FFLAGS) matinvp.f

matjoinc.o :	matjoinc.f matman.f
	$(F90) $(FFLAGS) matjoinc.f

matjoind.o :	matjoind.f matman.f
	$(F90) $(FFLAGS) matjoind.f
	
matjoinr.o :	matjoinr.f matman.f
	$(F90) $(FFLAGS) matjoinr.f
	
matorder.o :	matorder.f matman.f
	$(F90) $(FFLAGS) matorder.f

matprod.o :	matprod.f matman.f
	$(F90) $(FFLAGS) matprod.f
		
matquad.o :	matquad.f matman.f
	$(F90) $(FFLAGS) matquad.f
	
matrow.o :	matrow.f matman.f
	$(F90) $(FFLAGS) matrow.f

matsmul.o :	matsmul.f matman.f
	$(F90) $(FFLAGS) matsmul.f

matspec.o :	matspec.f matman.f
	$(F90) $(FFLAGS) matspec.f
		
matsvd.o :	matsvd.f matman.f
	$(F90) $(FFLAGS) matsvd.f
	
matsym.o :	matsym.f matman.f
	$(F90) $(FFLAGS) matsym.f
	
mattrans.o :	mattrans.f matman.f
	$(F90) $(FFLAGS) mattrans.f
	
matxtxi.o :	matxtxi.f matman.f
	$(F90) $(FFLAGS) matxtxi.f
	
matxtxix.o :	matxtxix.f matman.f
	$(F90) $(FFLAGS) matxtxix.f
	
space.o :	space.f
	$(F90) $(FFLAGS) space.f
	
pgetcl.o :	pgetcl.f
	$(F90) $(FFLAGS) pgetcl.f
	
openun.o :	openun.f
	$(F90) $(FFLAGS) openun.f
	
lapack1.o :	lapack1.f
	$(F90) $(FFLAGS) lapack1.f 
	
linpos.o :	linpos.f
	$(F90) $(FFLAGS) linpos.f 


###############################################################################

cov2cor :	cov2cor.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o cov2cor cov2cor.o space.o  pgetcl.o

covcond :	covcond.o space.o pgetcl.o linpos.o
	$(LD) $(LDFLAGS) -o covcond covcond.o space.o pgetcl.o linpos.o

mat2jco :	mat2jco.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o mat2jco mat2jco.o space.o  pgetcl.o

mat2srf :	mat2srf.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o mat2srf mat2srf.o space.o pgetcl.o

matadd :	matadd.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matadd matadd.o space.o  pgetcl.o
        
matcolex :	matcolex.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matcolex matcolex.o space.o  pgetcl.o

matdiag :	matdiag.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matdiag matdiag.o space.o  pgetcl.o

matdiff :	matdiff.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matdiff matdiff.o space.o  pgetcl.o

matinvp :	matinvp.o space.o pgetcl.o linpos.o
	$(LD) $(LDFLAGS) -o matinvp matinvp.o space.o pgetcl.o linpos.o
        
matjoinc :	matjoinc.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matjoinc matjoinc.o space.o  pgetcl.o
        
matjoind :	matjoind.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matjoind matjoind.o space.o  pgetcl.o

matjoinr :	matjoinr.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matjoinr matjoinr.o space.o  pgetcl.o
        
matorder :	matorder.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o matorder matorder.o space.o pgetcl.o
        
matprod :	matprod.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matprod matprod.o space.o  pgetcl.o
        
matquad :	matquad.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matquad matquad.o space.o  pgetcl.o
        
matrow :	matrow.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matrow matrow.o space.o  pgetcl.o
        
matsmul :	matsmul.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matsmul matsmul.o space.o  pgetcl.o
        
matspec :	matspec.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o matspec matspec.o space.o pgetcl.o
        
matsvd :	matsvd.o space.o pgetcl.o lapack1.o
	$(LD) $(LDFLAGS) -o matsvd matsvd.o space.o  pgetcl.o lapack1.o
        
matsym :	matsym.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o matsym matsym.o space.o  pgetcl.o

mattrans :	mattrans.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o mattrans mattrans.o space.o  pgetcl.o
        
matxtxi :	matxtxi.o space.o pgetcl.o linpos.o
	$(LD) $(LDFLAGS) -o matxtxi matxtxi.o space.o pgetcl.o linpos.o
        
matxtxix :	matxtxix.o space.o pgetcl.o linpos.o
	$(LD) $(LDFLAGS) -o matxtxix matxtxix.o space.o pgetcl.o linpos.o
        
