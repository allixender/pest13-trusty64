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


all :	dercomb1 genlin jco2mat jcoaddz jcocomb jcoorder jcopcat jrow2mat \
	jrow2vec obsrep paramerr pclc2mat pcov2mat pest2vec pestlin prederr \
	prederr1 prederr2 pwtadj1 regerr resproc reswrit scalepar vec2pest \
	veclog prederr3 pwtadj2 jcodiff regpred addreg1 randpar mulpartab \
	comfilnme paramid postjactest genlinpred subreg1 phistats lhs2pest \
	pest2lhs parreduce assesspar


.F.f :
	./cppp $(DEFINES) $< $*.f

random.f90 :	random.F90
	./cppp $(DEFINES) random.F90 random.f90

######################################################################


addreg1.o :	addreg1.f
	$(F90) $(FFLAGS) addreg1.f

dercomb1.o :	dercomb1.f
	$(F90) $(FFLAGS) dercomb1.f

genlin.o :	genlin.f
	$(F90) $(FFLAGS) genlin.f

jco2mat.o :	jco2mat.f
	$(F90) $(FFLAGS) jco2mat.f

jcoaddz.o :	jcoaddz.f
	$(F90) $(FFLAGS) jcoaddz.f

jcocomb.o :	jcocomb.f
	$(F90) $(FFLAGS) jcocomb.f

jcodiff.o :	jcodiff.f
	$(F90) $(FFLAGS) jcodiff.f

jcoorder.o :	jcoorder.f
	$(F90) $(FFLAGS) jcoorder.f

jcopcat.o :	jcopcat.f
	$(F90) $(FFLAGS) jcopcat.f

jrow2mat.o :	jrow2mat.f
	$(F90) $(FFLAGS) jrow2mat.f

jrow2vec.o :	jrow2vec.f
	$(F90) $(FFLAGS) jrow2vec.f

nblnk.o :	nblnk.f
	$(F90) $(FFLAGS) nblnk.f

obsrep.o :	obsrep.f
	$(F90) $(FFLAGS) obsrep.f

paramerr.o :	paramerr.f
	$(F90) $(FFLAGS) paramerr.f

pclc2mat.o :	pclc2mat.f matman.f
	$(F90) $(FFLAGS) pclc2mat.f

pcov2mat.o :	pcov2mat.f
	$(F90) $(FFLAGS) pcov2mat.f

pest2vec.o :	pest2vec.f
	$(F90) $(FFLAGS) pest2vec.f

pestlin.o :	pestlin.f
	$(F90) $(FFLAGS) pestlin.f

prederr.o :	prederr.f
	$(F90) $(FFLAGS) prederr.f

prederr1.o :	prederr1.f
	$(F90) $(FFLAGS) prederr1.f

prederr2.o :	prederr2.f
	$(F90) $(FFLAGS) prederr2.f

prederr3.o :	prederr3.f
	$(F90) $(FFLAGS) prederr3.f

pwtadj1.o :	pwtadj1.f
	$(F90) $(FFLAGS) pwtadj1.f

pwtadj2.o :	pwtadj2.f
	$(F90) $(FFLAGS) pwtadj2.f

regerr.o :	regerr.f
	$(F90) $(FFLAGS) regerr.f

resproc.o :	resproc.f
	$(F90) $(FFLAGS) resproc.f

regpred.o :	regpred.f
	$(F90) $(FFLAGS) regpred.f

reswrit.o :	reswrit.f
	$(F90) $(FFLAGS) reswrit.f

scalepar.o :	scalepar.f
	$(F90) $(FFLAGS) scalepar.f

subreg1.o :	subreg1.f
	$(F90) $(FFLAGS) subreg1.f

vec2pest.o :	vec2pest.f matman.f
	$(F90) $(FFLAGS) vec2pest.f

veclog.o :	veclog.f matman.f
	$(F90) $(FFLAGS) veclog.f

space.o :	space.f
	$(F90) $(FFLAGS) space.f

pgetcl.o :	pgetcl.f
	$(F90) $(FFLAGS) pgetcl.f

openun.o :	openun.f
	$(F90) $(FFLAGS) openun.f

certfile.o :	certfile.f
	$(F90) $(FFLAGS) certfile.f

lapack1.o :	lapack1.f
	$(F90) $(FFLAGS) lapack1.f

linpos.o :	linpos.f
	$(F90) $(FFLAGS) linpos.f

orthog.o :	orthog.f
	$(F90) $(FFLAGS) orthog.f

PDF.mod :	random.f90
	$(F90) $(FFLAGS) random.f90

randgen.o :	randgen.f
	$(F90) $(FFLAGS) randgen.f

slinpos.o :	slinpos.f
	$(F90) $(FFLAGS) slinpos.f

randpar.o :	randpar.f PDF.mod
	$(F90) $(FFLAGS) randpar.f

comfilnme.o :	comfilnme.f
	$(F90) $(FFLAGS) comfilnme.f

mulpartab.o :	mulpartab.f
	$(F90) $(FFLAGS) mulpartab.f

paramid.o :	paramid.f
	$(F90) $(FFLAGS) paramid.f

postjactest.o :	postjactest.f
	$(F90) $(FFLAGS) postjactest.f

genlinpred.o :	genlinpred.f
	$(F90) $(FFLAGS) genlinpred.f

phistats.o :	phistats.f
	$(F90) $(FFLAGS) phistats.f

lhs2pest.o :	lhs2pest.f
	$(F90) $(FFLAGS) lhs2pest.f

pest2lhs.o :	pest2lhs.f
	$(F90) $(FFLAGS) pest2lhs.f

parreduce.o :	parreduce.f
	$(F90) $(FFLAGS) parreduce.f

assesspar.o :	assesspar.f
	$(F90) $(FFLAGS) assesspar.f

######################################################################

addreg1 :	addreg1.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o addreg1 addreg1.o space.o pgetcl.o

dercomb1 :	dercomb1.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o dercomb1 dercomb1.o space.o pgetcl.o

genlin :	genlin.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o genlin genlin.o space.o pgetcl.o openun.o

jco2mat :	jco2mat.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jco2mat jco2mat.o space.o pgetcl.o openun.o

jcoaddz :	jcoaddz.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jcoaddz jcoaddz.o space.o pgetcl.o openun.o

jcocomb :	jcocomb.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jcocomb jcocomb.o space.o pgetcl.o openun.o

jcodiff :	jcodiff.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jcodiff jcodiff.o space.o pgetcl.o openun.o

jcoorder :	jcoorder.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jcoorder jcoorder.o space.o pgetcl.o openun.o

jcopcat :	jcopcat.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jcopcat jcopcat.o space.o pgetcl.o openun.o

jrow2mat :	jrow2mat.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jrow2mat jrow2mat.o space.o pgetcl.o openun.o

jrow2vec :	jrow2vec.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jrow2vec jrow2vec.o space.o pgetcl.o openun.o

obsrep :	obsrep.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o obsrep obsrep.o space.o  pgetcl.o

paramerr :	paramerr.o space.o openun.o certfile.o
	$(LD) $(LDFLAGS) -o paramerr paramerr.o space.o openun.o certfile.o

pclc2mat :	pclc2mat.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o pclc2mat pclc2mat.o space.o  pgetcl.o

pcov2mat :	pcov2mat.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o pcov2mat pcov2mat.o space.o  pgetcl.o

pest2vec :	pest2vec.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o pest2vec pest2vec.o space.o  pgetcl.o

pestlin :	pestlin.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o pestlin pestlin.o space.o pgetcl.o openun.o

prederr :	prederr.o space.o openun.o certfile.o
	$(LD) $(LDFLAGS) -o prederr prederr.o space.o openun.o certfile.o

prederr1 :	prederr1.o space.o openun.o certfile.o
	$(LD) $(LDFLAGS) -o prederr1 prederr1.o space.o openun.o certfile.o

prederr2 :	prederr2.o space.o openun.o certfile.o
	$(LD) $(LDFLAGS) -o prederr2 prederr2.o space.o openun.o certfile.o

prederr3 :	prederr3.o space.o openun.o certfile.o
	$(LD) $(LDFLAGS) -o prederr3 prederr3.o space.o openun.o certfile.o

pwtadj1 :	pwtadj1.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o pwtadj1 pwtadj1.o space.o pgetcl.o

pwtadj2 :	pwtadj2.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o pwtadj2 pwtadj2.o space.o pgetcl.o

regerr :	regerr.o space.o openun.o certfile.o
	$(LD) $(LDFLAGS) -o regerr regerr.o space.o openun.o certfile.o

resproc :	resproc.o space.o pgetcl.o lapack1.o linpos.o openun.o orthog.o
	$(LD) $(LDFLAGS) -o resproc resproc.o space.o pgetcl.o lapack1.o linpos.o \
	                    openun.o orthog.o

regpred :	regpred.o space.o lapack1.o certfile.o
	$(LD) $(LDFLAGS) -o regpred regpred.o space.o lapack1.o certfile.o

reswrit :	reswrit.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o reswrit reswrit.o space.o pgetcl.o openun.o

scalepar :	scalepar.o space.o openun.o certfile.o
	$(LD) $(LDFLAGS) -o scalepar scalepar.o space.o openun.o certfile.o

subreg1 :	subreg1.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o subreg1 subreg1.o space.o pgetcl.o

vec2pest :	vec2pest.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o vec2pest vec2pest.o space.o  pgetcl.o

veclog :	veclog.o space.o  pgetcl.o
	$(LD) $(LDFLAGS) -o veclog veclog.o space.o pgetcl.o

randpar :	randpar.o space.o certfile.o randgen.o slinpos.o random.o
	$(LD) $(LDFLAGS) -o randpar randpar.o space.o certfile.o randgen.o slinpos.o random.o

mulpartab :	mulpartab.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o mulpartab mulpartab.o space.o pgetcl.o

comfilnme :	comfilnme.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o comfilnme comfilnme.o space.o pgetcl.o

paramid :	paramid.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o paramid paramid.o space.o pgetcl.o

postjactest :	postjactest.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o postjactest postjactest.o space.o pgetcl.o

genlinpred :	genlinpred.o pgetcl.o openun.o space.o certfile.o
	$(LD) $(LDFLAGS) -o genlinpred genlinpred.o pgetcl.o openun.o certfile.o space.o

phistats :	phistats.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o phistats phistats.o space.o pgetcl.o

lhs2pest :	lhs2pest.o space.o pgetcl.o
	$(LD) $(LDFLAGS) -o lhs2pest lhs2pest.o space.o pgetcl.o

pest2lhs :	pest2lhs.o certfile.o space.o
	$(LD) $(LDFLAGS) -o pest2lhs pest2lhs.o certfile.o space.o

parreduce :	parreduce.o space.o nblnk.o pgetcl.o openun.o lapack1.o
	$(LD) $(LDFLAGS) -o parreduce parreduce.o space.o nblnk.o pgetcl.o openun.o lapack1.o

assesspar :	assesspar.o space.o nblnk.o pgetcl.o openun.o lapack1.o certfile.o
	$(LD) $(LDFLAGS) -o assesspar assesspar.o space.o nblnk.o pgetcl.o openun.o lapack1.o certfile.o



