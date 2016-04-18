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


all :	eigproc inschek jacwrit jco2jco jcotrans jcochek \
        par2par paramfix parrep pestchek jcosub \
        pestgen picalc ppause pslave pstop \
        pstopst punpause svdaprep tempchek wtfactor ppd2asc ppd2par


.F.f :
	./cppp $(DEFINES) $< $*.f

######################################################################


cheksub.o:	cheksub.f
	$(F90) $(FFLAGS) cheksub.f


common.o :	common.f
	$(F90) $(FFLAGS) common.f


compress.o :	compress.f
	$(F90) $(FFLAGS) compress.f


eigproc.o :	eigproc.f
	$(F90) $(FFLAGS) eigproc.f


inschek.o :	inschek.f
	$(F90) $(FFLAGS) inschek.f


jacwrit.o :	jacwrit.f
	$(F90) $(FFLAGS) jacwrit.f


jco2jco.o :	jco2jco.f
	$(F90) $(FFLAGS) jco2jco.f


jcosub.o :	jcosub.f
	$(F90) $(FFLAGS) jcosub.f


jcochek.o :	jcochek.f
	$(F90) $(FFLAGS) jcochek.f


jcotrans.o :	jcotrans.f
	$(F90) $(FFLAGS) jcotrans.f


ppd2par.o :	ppd2par.f
	$(F90) $(FFLAGS) ppd2par.f


ppd2asc.o :	ppd2asc.f
	$(F90) $(FFLAGS) ppd2asc.f


nblnk.o :	nblnk.f
	$(F90) $(FFLAGS) nblnk.f


openun.o:	openun.f
	$(F90) $(FFLAGS) openun.f


par2par.o :	par2par.f
	$(F90) $(FFLAGS) par2par.f


paramfix.o :	paramfix.f
	$(F90) $(FFLAGS) paramfix.f


parrep.o :	parrep.f
	$(F90) $(FFLAGS) parrep.f


PESTDATA.mod :   pestdata.f
	$(F90) $(FFLAGS) pestdata.f


pestchek.o :	pestchek.f
	$(F90) $(FFLAGS) pestchek.f


pestgen.o :	pestgen.f
	$(F90) $(FFLAGS) pestgen.f


pestsub1.o :	pestsub1.f
	$(F90) $(FFLAGS) pestsub1.f


pgetcl.o :	pgetcl.f
	$(F90) $(FFLAGS) pgetcl.f


picalc.o :	picalc.f
	$(F90) $(FFLAGS) picalc.f


pslave.o :	pslave.f
	$(F90) $(FFLAGS) pslave.f


pstop.o :	pstop.f
	$(F90) $(FFLAGS) pstop.f


pstopst.o :	pstopst.f
	$(F90) $(FFLAGS) pstopst.f


punpause.o:	punpause.f
	$(F90) $(FFLAGS) punpause.f


ppause.o:	ppause.f
	$(F90) $(FFLAGS) ppause.f


readpest.o :	readpest.f PESTDATA.mod
	$(F90) $(FFLAGS) readpest.f


space.o :	space.f
	$(F90) $(FFLAGS) space.f


svdaprep.o:	svdaprep.f
	$(F90) $(FFLAGS) svdaprep.f


sstop.o :	sstop.f
	$(F90) $(FFLAGS) sstop.f


tempchek.o :	tempchek.f
	$(F90) $(FFLAGS) tempchek.f


pestwait.o :	pestwait.f
	$(F90) $(FFLAGS) pestwait.f


writint.o :	writint.f
	$(F90) $(FFLAGS) writint.f


writsig.o :	writsig.f
	$(F90) $(FFLAGS) writsig.f


wtfactor.o :	wtfactor.f
	$(F90) $(FFLAGS) wtfactor.f


######################################################################


eigproc :	eigproc.o space.o nblnk.o pgetcl.o
	$(LD) $(LDFLAGS) -o eigproc eigproc.o space.o nblnk.o pgetcl.o


inschek :	inschek.o pgetcl.o nblnk.o space.o
	$(LD) $(LDFLAGS) -o inschek inschek.o pgetcl.o nblnk.o space.o


jacwrit :	jacwrit.o pgetcl.o nblnk.o space.o
	$(LD) $(LDFLAGS) -o jacwrit jacwrit.o pgetcl.o nblnk.o space.o


jco2jco :	jco2jco.o space.o nblnk.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jco2jco jco2jco.o space.o nblnk.o pgetcl.o openun.o


jcosub :	jcosub.o space.o nblnk.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jcosub jcosub.o space.o nblnk.o pgetcl.o openun.o


jcochek :	jcochek.o space.o nblnk.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o jcochek jcochek.o space.o nblnk.o pgetcl.o openun.o


jcotrans :	jcotrans.o space.o nblnk.o pgetcl.o
	$(LD) $(LDFLAGS) -o jcotrans jcotrans.o space.o nblnk.o pgetcl.o


par2par :	par2par.o pgetcl.o nblnk.o writsig.o space.o
	$(LD) $(LDFLAGS) -o par2par par2par.o pgetcl.o nblnk.o writsig.o space.o


paramfix :	paramfix.o pgetcl.o nblnk.o space.o
	$(LD) $(LDFLAGS) -o paramfix paramfix.o pgetcl.o nblnk.o space.o


parrep :	 parrep.o pgetcl.o nblnk.o space.o
	$(LD) $(LDFLAGS) -o parrep parrep.o pgetcl.o nblnk.o space.o


pestchek :	pestchek.o common.o cheksub.o pgetcl.o nblnk.o space.o
	$(LD) $(LDFLAGS) -o pestchek pestchek.o common.o cheksub.o pgetcl.o nblnk.o space.o


pestgen :	pestgen.o pgetcl.o nblnk.o space.o
	$(LD) $(LDFLAGS) -o pestgen pestgen.o pgetcl.o nblnk.o space.o


picalc :	picalc.o pgetcl.o
	$(LD) $(LDFLAGS) -o picalc picalc.o pgetcl.o


ppause :	ppause.o
	$(LD) $(LDFLAGS) -o ppause ppause.o


pslave :	pslave.o pestwait.o pgetcl.o sstop.o
	$(LD) $(LDFLAGS) -o pslave pslave.o pestwait.o pgetcl.o sstop.o


pstop :	pstop.o
	$(LD) $(LDFLAGS) -o pstop pstop.o


pstopst :	pstopst.o
	$(LD) $(LDFLAGS) -o pstopst pstopst.o


punpause :	punpause.o
	$(LD) $(LDFLAGS) -o punpause punpause.o


svdaprep :	svdaprep.o
	$(LD) $(LDFLAGS) -o svdaprep svdaprep.o


tempchek :	tempchek.o pgetcl.o nblnk.o writsig.o space.o
	$(LD) $(LDFLAGS) -o tempchek tempchek.o pgetcl.o nblnk.o writsig.o space.o


wtfactor :	wtfactor.o pgetcl.o nblnk.o space.o
	$(LD) $(LDFLAGS) -o wtfactor wtfactor.o pgetcl.o nblnk.o space.o


ppd2asc :	ppd2asc.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o ppd2asc ppd2asc.o space.o pgetcl.o openun.o


ppd2par :	ppd2par.o space.o pgetcl.o openun.o
	$(LD) $(LDFLAGS) -o ppd2par ppd2par.o space.o pgetcl.o openun.o
