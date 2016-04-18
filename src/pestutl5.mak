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

all :	cmaes_p sceua_p jactest rdmulres obs2obs

.F.f :
	./cppp $(DEFINES) $< $*.f



cmaes_p :	cmaes_p.o readpest.o pgetcl.o slapack.o space.o \
                common.o pestsub1.o writint.o linpos.o compress.o \
                certread.o mio.o prm.o cmaes.o ms_stubs.o pestdata.o
	$(LD) $(LDFLAGS) -o cmaes_p cmaes_p.o readpest.o pgetcl.o slapack.o space.o \
	                 common.o pestsub1.o writint.o linpos.o compress.o \
	                 certread.o mio.o prm.o cmaes.o ms_stubs.o pestdata.o

cmaes_p.o :	cmaes_p.f model_input_output_interface.mod  parallel_run_manager.mod \
                PESTDATA.mod cmaes_module.mod
	$(F90) $(FFLAGS) cmaes_p.f


sceua_p :	sceua_p.o readpest.o pgetcl.o space.o \
                common.o pestsub1.o writint.o linpos.o compress.o \
                mio.o prm.o sceua.o ms_stubs.o pestdata.o
	$(LD) $(LDFLAGS) -o sceua_p sceua_p.o readpest.o pgetcl.o space.o \
	                 common.o pestsub1.o writint.o linpos.o compress.o \
	                 mio.o prm.o sceua.o ms_stubs.o pestdata.o

sceua_p.o :	sceua_p.f model_input_output_interface.mod  parallel_run_manager.mod \
                PESTDATA.mod sceua_module.mod
	$(F90) $(FFLAGS) sceua_p.f


jactest	:	jactest.o readpest.o pgetcl.o space.o \
                common.o pestsub1.o writint.o compress.o
	$(LD) $(LDFLAGS) -o jactest jactest.o readpest.o pgetcl.o space.o common.o \
	                 pestsub1.o writint.o compress.o pestdata.o mio.o prm.o

jactest.o :	jactest.f model_input_output_interface.mod  parallel_run_manager.mod PESTDATA.mod
	$(F90) $(FFLAGS) jactest.f


rdmulres	:	rdmulres.o pgetcl.o space.o pestsub1.o writint.o
	$(LD) $(LDFLAGS) -o rdmulres rdmulres.o pgetcl.o space.o pestsub1.o writint.o mio.o

rdmulres.o :	rdmulres.f model_input_output_interface.mod
	$(F90) $(FFLAGS) rdmulres.f


obs2obs	:	obs2obs.o pgetcl.o space.o writint.o
	$(LD) $(LDFLAGS) -o obs2obs obs2obs.o pgetcl.o space.o writint.o mio.o eqn.o

obs2obs.o :	obs2obs.f model_input_output_interface.mod equation.mod
	$(F90) $(FFLAGS) obs2obs.f




certread.o:	certread.f
	$(F90) $(FFLAGS) certread.f


cmaes_module.mod :	cmaes.o


cmaes.o :	cmaes.f90
	$(F90) $(FFLAGS) cmaes.f90

cmaes.f90 :	cmaes.F90
	./cppp $(DEFINES) cmaes.F90 cmaes.f90


sceua_module.mod :	sceua.o


sceua.o :	sceua.f
	$(F90) $(FFLAGS) sceua.f


common.o:	common.f
	$(F90) $(FFLAGS) common.f


compress.o:	compress.f
	$(F90) $(FFLAGS) compress.f


linpos.o :	linpos.f
	$(F90) $(FFLAGS) linpos.f


model_input_output_interface.mod :	mio.o


mio.o :	mio.f90
	$(F90) $(FFLAGS) mio.f90

mio.f90 :	mio.F90
	./cppp $(DEFINES) mio.F90 mio.f90


equation.mod :	eqn.o


eqn.o :	eqn.f90
	$(F90) $(FFLAGS) eqn.f90

eqn.f90 :	eqn.F90
	./cppp $(DEFINES) eqn.F90 eqn.f90


parallel_run_manager.mod :	prm.o


prm.o :	prm.f90
	$(F90) $(FFLAGS) prm.f90

prm.f90 :	prm.F90
	./cppp $(DEFINES) prm.F90 prm.f90


PESTDATA.mod:	pestdata.f
	$(F90) $(FFLAGS) pestdata.f


pestsub1.o:	pestsub1.f
	$(F90) $(FFLAGS) pestsub1.f


space.o :	space.f
	$(F90) $(FFLAGS) space.f


pgetcl.o :	pgetcl.f
	$(F90) $(FFLAGS) pgetcl.f


readpest.o :	readpest.f PESTDATA.mod
	$(F90) $(FFLAGS) readpest.f


slapack.o :	slapack.f
	$(F90) $(FFLAGS) slapack.f


writint.o:	writint.f
	$(F90) $(FFLAGS) writint.f


ms_stubs.o:	ms_stubs.f
	$(F90) $(FFLAGS) ms_stubs.f
