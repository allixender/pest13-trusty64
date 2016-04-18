#
# Change the following if a different installation path is required.
#

INSTALLDIR=$(HOME)/bin

# Uncomment one of the blocks below.
#
# See "Notes on the UNIX Version of PEST" for instructions.
#

######################################################################
# PLATFORM  UNIX
# COMPILER: GNU g95 FORTRAN95 compiler

F90=gfortran
FFLAGS=
######################################################################


######################################################################
# PLATFORM  UNIX
# COMPILER: General Unix compiler

#F90=f90
#FFLAGS=
######################################################################


######################################################################
# PLATFORM  UNIX
# COMPILER: Portland Group compiler

#F90=pgf90
#FFLAGS=
######################################################################


######################################################################
# PLATFORM  UNIX
# COMPILER:  Lahey/Fujitsu Optimizing Fortran 95 Compiler

#F90=lf95
#FFLAGS=
######################################################################


######################################################################
# DON'T EDIT BELOW THIS LINE
######################################################################


cppp :  cppp.F
	$(F90) $(FFLAGS) -o cppp cppp.F


d_test: d_test.F
	$(F90) -o d_test d_test.F
	./d_test

clean : 
	rm -f *.o
	rm -f *.mod
	rm -f *.f
	rm -f *.f90
	rm -f *.c

clean_exe :
	rm -f addreg1
	rm -f beopest
	rm -f calmaintain
	rm -f cmaes_p
	rm -f comfilnme
	rm -f cov2cor
	rm -f covcond
	rm -f dercomb1
	rm -f eigproc
	rm -f genlin
	rm -f genlinpred
	rm -f identpar
	rm -f infstat
	rm -f infstat1
	rm -f inschek
	rm -f jactest
	rm -f jacwrit
	rm -f jco2jco
	rm -f jco2mat
	rm -f jcoaddz
	rm -f jcochek
	rm -f jcocomb
	rm -f jcodiff
	rm -f jcoorder
	rm -f jcopcat
	rm -f jcotrans
	rm -f jrow2mat
	rm -f jrow2vec
	rm -f jcosub
	rm -f mat2jco
	rm -f mat2srf
	rm -f matadd
	rm -f matcolex
	rm -f matdiag
	rm -f matdiff
	rm -f matinvp
	rm -f matjoinc
	rm -f matjoind
	rm -f matjoinr
	rm -f matorder
	rm -f matprod
	rm -f matquad
	rm -f matrow
	rm -f matsmul
	rm -f matspec
	rm -f matsvd
	rm -f matsym
	rm -f mattrans
	rm -f matxtxi
	rm -f matxtxix
	rm -f muljcosen
	rm -f mulpartab
	rm -f obs2obs
	rm -f obscalc
	rm -f obsrep
	rm -f par2par
	rm -f paramerr
	rm -f paramfix
	rm -f paramid
	rm -f parcalc
	rm -f parreduce
	rm -f assesspar
	rm -f parrep
	rm -f pclc2mat
	rm -f pcov2mat
	rm -f pest
	rm -f pest2vec
	rm -f pestchek
	rm -f pestgen
	rm -f pestlin
	rm -f picalc
	rm -f phistats
	rm -f lhs2pest
	rm -f pest2lhs
	rm -f pnulpar
	rm -f postjactest
	rm -f ppause
	rm -f ppest
	rm -f ppd2asc
	rm -f ppd2par
	rm -f prederr
	rm -f prederr1
	rm -f prederr2
	rm -f prederr3
	rm -f predunc1
	rm -f predunc4
	rm -f predunc5
	rm -f predunc6
	rm -f predunc7
	rm -f predvar1
	rm -f predvar1a
	rm -f predvar1b
	rm -f predvar1c
	rm -f parvar1	
	rm -f predvar2
	rm -f predvar3
	rm -f predvar4
	rm -f predvar5
	rm -f pslave
	rm -f pstop
	rm -f pstopst
	rm -f punpause
	rm -f pwtadj1
	rm -f pwtadj2
	rm -f randpar
	rm -f rdmulres
	rm -f regerr
	rm -f regpred
	rm -f resproc
	rm -f reswrit
	rm -f scalepar
	rm -f sceua_p
	rm -f sensan
	rm -f senschek
	rm -f simcase
	rm -f ssstat
	rm -f subreg1
	rm -f supcalc
	rm -f supobsprep
	rm -f supobspar
	rm -f supobspar1
	rm -f svdaprep
	rm -f tempchek
	rm -f vec2pest
	rm -f veclog
	rm -f wtfactor
	rm -f wtsenout
	rm -f cppp

install :
	install addreg1 $(INSTALLDIR)/addreg1
	install beopest $(INSTALLDIR)/beopest
	install beopest $(INSTALLDIR)/calmaintain
	install cmaes_p $(INSTALLDIR)/cmaes_p
	install comfilnme $(INSTALLDIR)/comfilnme
	install cov2cor $(INSTALLDIR)/cov2cor
	install covcond $(INSTALLDIR)/covcond
	install dercomb1 $(INSTALLDIR)/dercomb1
	install eigproc $(INSTALLDIR)/eigproc
	install genlin $(INSTALLDIR)/genlin
	install genlinpred $(INSTALLDIR)/genlinpred
	install identpar $(INSTALLDIR)/identpar
	install infstat $(INSTALLDIR)/infstat
	install infstat1 $(INSTALLDIR)/infstat1
	install inschek $(INSTALLDIR)/inschek
	install jactest $(INSTALLDIR)/jactest
	install jacwrit $(INSTALLDIR)/jacwrit
	install jco2jco $(INSTALLDIR)/jco2jco
	install jco2mat $(INSTALLDIR)/jco2mat
	install jcoaddz $(INSTALLDIR)/jcoaddz
	install jcochek $(INSTALLDIR)/jcochek
	install jcocomb $(INSTALLDIR)/jcocomb
	install jcodiff $(INSTALLDIR)/jcodiff
	install jcoorder $(INSTALLDIR)/jcoorder
	install jcopcat  $(INSTALLDIR)/jcopcat
	install jcotrans $(INSTALLDIR)/jcotrans
	install jrow2mat $(INSTALLDIR)/jrow2mat
	install jrow2vec $(INSTALLDIR)/jrow2vec
	install jcosub $(INSTALLDIR)/jcosub
	install mat2jco $(INSTALLDIR)/mat2jco
	install mat2srf  $(INSTALLDIR)/mat2srf
	install matadd $(INSTALLDIR)/matadd
	install matcolex $(INSTALLDIR)/matcolex
	install matdiag $(INSTALLDIR)/matdiag
	install matdiff $(INSTALLDIR)/matdiff
	install matinvp  $(INSTALLDIR)/matinvp
	install matjoinc $(INSTALLDIR)/matjoinc
	install matjoind $(INSTALLDIR)/matjoind
	install matjoinr $(INSTALLDIR)/matjoinr
	install matorder $(INSTALLDIR)/matorder
	install matprod $(INSTALLDIR)/matprod
	install matquad $(INSTALLDIR)/matquad
	install matrow $(INSTALLDIR)/matrow
	install matsmul $(INSTALLDIR)/matsmul
	install matspec $(INSTALLDIR)/matspec
	install matsvd $(INSTALLDIR)/matsvd
	install matsym $(INSTALLDIR)/matsym
	install mattrans $(INSTALLDIR)/mattrans
	install matxtxi $(INSTALLDIR)/matxtxi
	install matxtxix $(INSTALLDIR)/matxtxix
	install muljcosen $(INSTALLDIR)/muljcosen
	install mulpartab $(INSTALLDIR)/mulpartab
	install obs2obs $(INSTALLDIR)/obs2obs
	install obscalc $(INSTALLDIR)/obscalc
	install obsrep $(INSTALLDIR)/obsrep
	install par2par $(INSTALLDIR)/par2par
	install paramerr $(INSTALLDIR)/paramerr
	install paramfix $(INSTALLDIR)/paramfix
	install paramid $(INSTALLDIR)/paramid
	install parcalc $(INSTALLDIR)/parcalc
	install parrep $(INSTALLDIR)/parrep
	install parreduce $(INSTALLDIR)/parreduce
	install assesspar $(INSTALLDIR)/assesspar
	install pclc2mat $(INSTALLDIR)/pclc2mat
	install pcov2mat $(INSTALLDIR)/pcov2mat
	install pest $(INSTALLDIR)/pest
	install pest2vec $(INSTALLDIR)/pest2vec
	install pestchek $(INSTALLDIR)/pestchek
	install pestgen $(INSTALLDIR)/pestgen
	install pestlin $(INSTALLDIR)/pestlin
	install picalc $(INSTALLDIR)/picalc
	install phistats $(INSTALLDIR)/phistats
	install lhs2pest $(INSTALLDIR)/lhs2pest
	install pest2lhs $(INSTALLDIR)/pest2lhs
	install pnulpar $(INSTALLDIR)/pnulpar
	install postjactest $(INSTALLDIR)/postjactest
	install ppause $(INSTALLDIR)/ppause
	install ppest $(INSTALLDIR)/ppest
	install ppd2par $(INSTALLDIR)/ppd2par
	install ppd2asc $(INSTALLDIR)/ppd2asc
	install prederr $(INSTALLDIR)/prederr
	install prederr1 $(INSTALLDIR)/prederr1
	install prederr2 $(INSTALLDIR)/prederr2
	install prederr3 $(INSTALLDIR)/prederr3
	install predunc1 $(INSTALLDIR)/predunc1
	install predunc4 $(INSTALLDIR)/predunc4
	install predunc5 $(INSTALLDIR)/predunc5
	install predunc6 $(INSTALLDIR)/predunc6
	install predunc7 $(INSTALLDIR)/predunc7
	install predvar1 $(INSTALLDIR)/predvar1
	install predvar1a $(INSTALLDIR)/predvar1a
	install predvar1b $(INSTALLDIR)/predvar1b
	install predvar1c $(INSTALLDIR)/predvar1c
	install parvar1 $(INSTALLDIR)/parvar1
	install predvar2 $(INSTALLDIR)/predvar2
	install predvar3 $(INSTALLDIR)/predvar3
	install predvar4 $(INSTALLDIR)/predvar4
	install predvar5 $(INSTALLDIR)/predvar5
	install pslave $(INSTALLDIR)/pslave
	install pstop $(INSTALLDIR)/pstop
	install pstopst $(INSTALLDIR)/pstopst
	install punpause $(INSTALLDIR)/punpause
	install pwtadj1 $(INSTALLDIR)/pwtadj1
	install pwtadj2 $(INSTALLDIR)/pwtadj2
	install randpar $(INSTALLDIR)/randpar
	install rdmulres $(INSTALLDIR)/rdmulres
	install regerr $(INSTALLDIR)/regerr
	install regpred $(INSTALLDIR)/regpred
	install resproc $(INSTALLDIR)/resproc
	install reswrit  $(INSTALLDIR)/reswrit
	install scalepar $(INSTALLDIR)/scalepar
	install sceua_p $(INSTALLDIR)/sceua_p
	install sensan $(INSTALLDIR)/sensan
	install senschek $(INSTALLDIR)/senschek
	install simcase $(INSTALLDIR)/simcase
	install ssstat $(INSTALLDIR)/ssstat
	install subreg1 $(INSTALLDIR)/subreg1
	install supcalc $(INSTALLDIR)/supcalc
	install supobsprep $(INSTALLDIR)/supobsprep
	install supobspar $(INSTALLDIR)/supobspar
	install supobspar1 $(INSTALLDIR)/supobspar1
	install svdaprep $(INSTALLDIR)/svdaprep
	install tempchek $(INSTALLDIR)/tempchek
	install vec2pest $(INSTALLDIR)/vec2pest
	install veclog   $(INSTALLDIR)/veclog
	install wtfactor $(INSTALLDIR)/wtfactor
	install wtsenout $(INSTALLDIR)/wtsenout
	install cppp $(INSTALLDIR)/cppp

uninstall :
	rm $(INSTALLDIR)/addreg1
	rm $(INSTALLDIR)/beopest
	rm $(INSTALLDIR)/calmaintain
	rm $(INSTALLDIR)/cmaes_p
	rm $(INSTALLDIR)/comfilnme
	rm $(INSTALLDIR)/cov2cor
	rm $(INSTALLDIR)/covcond
	rm $(INSTALLDIR)/dercomb1
	rm $(INSTALLDIR)/eigproc
	rm $(INSTALLDIR)/genlin
	rm $(INSTALLDIR)/genlinpred
	rm $(INSTALLDIR)/identpar
	rm $(INSTALLDIR)/infstat
	rm $(INSTALLDIR)/infstat1
	rm $(INSTALLDIR)/inschek
	rm $(INSTALLDIR)/jactest
	rm $(INSTALLDIR)/jacwrit
	rm $(INSTALLDIR)/jco2jco
	rm $(INSTALLDIR)/jco2mat
	rm $(INSTALLDIR)/jcoaddz
	rm $(INSTALLDIR)/jcochek
	rm $(INSTALLDIR)/jcocomb
	rm $(INSTALLDIR)/jcodiff
	rm $(INSTALLDIR)/jcoorder
	rm $(INSTALLDIR)/jcopcat
	rm $(INSTALLDIR)/jcotrans
	rm $(INSTALLDIR)/jrow2mat
	rm $(INSTALLDIR)/jrow2vec
	rm $(INSTALLDIR)/jcosub
	rm $(INSTALLDIR)/mat2jco
	rm $(INSTALLDIR)/mat2srf
	rm $(INSTALLDIR)/matadd
	rm $(INSTALLDIR)/matcolex
	rm $(INSTALLDIR)/matdiag
	rm $(INSTALLDIR)/matdiff
	rm $(INSTALLDIR)/matinvp
	rm $(INSTALLDIR)/matjoinc
	rm $(INSTALLDIR)/matjoind
	rm $(INSTALLDIR)/matjoinr
	rm $(INSTALLDIR)/matorder
	rm $(INSTALLDIR)/matprod
	rm $(INSTALLDIR)/matquad
	rm $(INSTALLDIR)/matrow
	rm $(INSTALLDIR)/matsmul
	rm $(INSTALLDIR)/matspec
	rm $(INSTALLDIR)/matsvd
	rm $(INSTALLDIR)/matsym
	rm $(INSTALLDIR)/mattrans
	rm $(INSTALLDIR)/matxtxi
	rm $(INSTALLDIR)/matxtxix
	rm $(INSTALLDIR)/muljcosen
	rm $(INSTALLDIR)/mulpartab
	rm $(INSTALLDIR)/obs2obs
	rm $(INSTALLDIR)/obscalc
	rm $(INSTALLDIR)/obsrep
	rm $(INSTALLDIR)/par2par
	rm $(INSTALLDIR)/paramerr
	rm $(INSTALLDIR)/paramfix
	rm $(INSTALLDIR)/paramid
	rm $(INSTALLDIR)/parcalc
	rm $(INSTALLDIR)/parrep
	rm $(INSTALLDIR)/parreduce
	rm $(INSTALLDIR)/assesspar
	rm $(INSTALLDIR)/pclc2mat
	rm $(INSTALLDIR)/pcov2mat
	rm $(INSTALLDIR)/pest
	rm $(INSTALLDIR)/pest2vec
	rm $(INSTALLDIR)/pestchek
	rm $(INSTALLDIR)/pestgen
	rm $(INSTALLDIR)/pestlin
	rm $(INSTALLDIR)/picalc
	rm $(INSTALLDIR)/phistats
	rm $(INSTALLDIR)/lhs2pest
	rm $(INSTALLDIR)/pnulpar
	rm $(INSTALLDIR)/postjactest
	rm $(INSTALLDIR)/ppause
	rm $(INSTALLDIR)/ppest
	rm $(INSTALLDIR)/ppd2par
	rm $(INSTALLDIR)/ppd2asc
	rm $(INSTALLDIR)/prederr
	rm $(INSTALLDIR)/prederr1
	rm $(INSTALLDIR)/prederr2
	rm $(INSTALLDIR)/prederr3
	rm $(INSTALLDIR)/predunc1
	rm $(INSTALLDIR)/predunc4
	rm $(INSTALLDIR)/predunc5
	rm $(INSTALLDIR)/predunc6
	rm $(INSTALLDIR)/predunc7
	rm $(INSTALLDIR)/predvar1
	rm $(INSTALLDIR)/predvar1a
	rm $(INSTALLDIR)/predvar1b
	rm $(INSTALLDIR)/predvar1c
	rm $(INSTALLDIR)/parvar1	
	rm $(INSTALLDIR)/predvar2
	rm $(INSTALLDIR)/predvar3
	rm $(INSTALLDIR)/predvar4
	rm $(INSTALLDIR)/predvar5
	rm $(INSTALLDIR)/pslave
	rm $(INSTALLDIR)/pstop
	rm $(INSTALLDIR)/pstopst
	rm $(INSTALLDIR)/punpause
	rm $(INSTALLDIR)/pwtadj1
	rm $(INSTALLDIR)/pwtadj2
	rm $(INSTALLDIR)/randpar
	rm $(INSTALLDIR)/rdmulres
	rm $(INSTALLDIR)/regerr
	rm $(INSTALLDIR)/regpred
	rm $(INSTALLDIR)/resproc
	rm $(INSTALLDIR)/reswrit
	rm $(INSTALLDIR)/scalepar
	rm $(INSTALLDIR)/sceua_p
	rm $(INSTALLDIR)/sensan
	rm $(INSTALLDIR)/senschek
	rm $(INSTALLDIR)/simcase
	rm $(INSTALLDIR)/ssstat
	rm $(INSTALLDIR)/subreg1
	rm $(INSTALLDIR)/supcalc
	rm $(INSTALLDIR)/supobsprep
	rm $(INSTALLDIR)/supobspar
	rm $(INSTALLDIR)/supobspar1
	rm $(INSTALLDIR)/svdaprep
	rm $(INSTALLDIR)/tempchek
	rm $(INSTALLDIR)/vec2pest
	rm $(INSTALLDIR)/veclog
	rm $(INSTALLDIR)/wtfactor
	rm $(INSTALLDIR)/wtsenout
	rm $(INSTALLDIR)/cppp
