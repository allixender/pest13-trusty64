        PROGRAM  VES

C -- PROGRAM VES COMPUTES APPARENT RESISTIVITIES OVER A LAYERED
C    HALF SPACE FOR THE SCHLUMBERGER ARRAY USING THE LINEAR FILTER
C    METHOD TO CARRY OUT THE FIRST ORDER BESSEL TRANFORM INVOLVED
C    IN THIS CALCULATION.


	DIMENSION AB2(37),RES(37),PAR(19),TF(56)
	REAL*8 C(20),XO
C
C

C -- INPUT DATA IS READ FROM TWO MODEL INPUT FILES.

        OPEN (3,FILE='a_model.in1')
	READ (3,*)X1,X2
	READ (3,*)NL
	READ (3,*) (PAR(2*I-1),I=1,NL)
        CLOSE(UNIT=3)

        OPEN(UNIT=3,FILE='a_model.in2')
	READ (3,*) (PAR(2*I),I=1,NL-1)
	CLOSE (3)
C

C -- APPARENT RESISTIVITIES ARE NOW COMPUTED.

	CALL FILTER (NC,C,XO,XINC,NLF,NR)
	CALL ASPAC (X1,X2,XINC,NAB,AB2)
	NT = NAB + NLF + NR
	NP = 2*NL -1
	DO 20 I =1,NP
	    PAR(I) = ALOG(PAR(I))
20    CONTINUE
	CALL TFORM (NP,PAR,NAB,X1,NT,TF,XINC,XO,NLF)
	CALL APRES (NLF,NR,C,NT,TF,RES)
C

C -- APPARENT RESISTIVITIES ARE WRITTEN TO THREE MODEL OUTPUT FILES.

        OPEN (UNIT=3,FILE='a_model.ot1')
	DO I = 1,4
            WRITE (3,30) AB2(I),RES(I)
30          FORMAT(1X,F10.3,T15,1PG14.7)
        END DO
        CLOSE(UNIT=3)

        OPEN(UNIT=3,FILE='a_model.ot2')
	DO I = 5,7
            WRITE (3,30) AB2(I),RES(I)
        END DO
        CLOSE(UNIT=3)

        OPEN(UNIT=3,FILE='a_model.ot3')
	DO I = 8,NAB
            WRITE (3,30) AB2(I),RES(I)
        END DO
        CLOSE(UNIT=3)

        CALL WAIT(40)

C
	END


	SUBROUTINE TFORM(NP,P,NAB,AB1,NT,TF,XINC,OFFSET,NLF)

	DIMENSION P(*),TF(*)
	REAL*8 OFFSET
C
C
	 NL = (NP+1)/2
	RN1 = EXP(P(2*NL-3))
	DN1 = EXP(P(2*NL-2))
	 RN = EXP(P(2*NL-1))
C
	DO 10 I = 1,NT
	    RLD = EXP(ALOG(AB1)+(I-NLF-1)*XINC+OFFSET)
	    TMP = -2.*DN1/RLD
	    IF (TMP .LT. -200.) TMP = -200.
	    TMP = EXP(TMP)
	    RK = (RN1-RN)/(RN1+RN)
	     T = RN1*(1-RK*TMP)/(1+RK*TMP)
	    DO 20 J=NL-2,1,-1
		   RT = EXP(P(2*J-1))
		   DT = EXP(P(2*J))
		  TMP = -2.*DT/RLD
		   IF (TMP .LT. -200.)TMP = -200.
		  TMP = EXP(TMP)
		    W = RT*(1.-TMP)/(1.+TMP)
		    T = (W+T)/(1.+W*T/RT/RT)
20        CONTINUE
	    TF(I) = T
10    CONTINUE
C
	RETURN
	END



	SUBROUTINE FILTER (NC,C,XO,XINC,NLF,NR)
	REAL*8 C(*),XO
C
C
	C( 1) =   1.369603577D-4
	C( 2) =  -2.754212679D-4
	C( 3) =   1.04396355894D-3
	C( 4) =  -3.849372041D-4
	C( 5) =   4.51275421859D-3
	C( 6) =   6.49011602005D-3
	C( 7) =   2.90738172479D-2
	C( 8) =   7.96757173232D-2
	C( 9) =   .235582345875D0
	C(10) =   .611868320918D0
	C(11) =  1.15845916805D0
	C(12) =   .515104150056D0
	C(13) = -3.48937736593D0
	C(14) =  2.64315794022D0
	C(15) = -1.04346888245D0
	C(16) =   .322181066183D0
	C(17) =  -9.53012747627D-2
	C(18) =   2.69154603777D-2
	C(19) =  -6.23443837694D-3
	C(20) =   8.418328825D-4
C
	   NC = 20
	  NLF = 11
	   NR = 8
	   XO = -.123113457325D0
	 XINC = ALOG(10.)/6.
C
	RETURN
	END



	SUBROUTINE APRES(NLF,NR,C,NT,T,R)
	DIMENSION T(*),R(*)
	REAL*8 C(*)
C
C
	DO 10 J = NLF+1,NT-NR
	    R0 = 0.
	    DO 20 I = -NR,NLF
		  R0 = R0 + C(I+NR+1)*T(J-I)
20        CONTINUE
	    R(J-NLF) = R0
10    CONTINUE
C
	RETURN
	END


	SUBROUTINE ASPAC(X1,X2,XINC,NAB,AB2)
	DIMENSION AB2(*)
C
C
	NAB = INT(ALOG(X2/X1)/XINC+1.99)
C
	TMP = ALOG(X1) - XINC
	DO 10 I = 1,NAB
		 TMP = TMP+XINC
	    AB2(I) = EXP(TMP)
10    CONTINUE
C
C
	RETURN
	END


        subroutine wait(nsec)

        implicit none

        integer ddate(8),iticks,iticks1,nsec

        call date_and_time(values=ddate)
        iticks=ddate(5)*360000+ddate(6)*6000+ddate(7)*100+ddate(8)/10
10      call date_and_time(values=ddate)
        iticks1=ddate(5)*360000+ddate(6)*6000+ddate(7)*100+ddate(8)/10
        if(iticks1.lt.iticks) iticks1=iticks1+8640000
        if(iticks1.lt.iticks+nsec) go to 10

        return

        end
