        program testmod

	integer*4 i,numx
	real*4 a,b,c,d
	real*4 x,y

        write(6,'(a)') ' Running program testmod ....'

        open(unit=10,file='test_c1.in',status='old')
	read(10,*) a
	close(unit=10)
        open(unit=10,file='test_c2.in',status='old')
	read(10,*) b
	close(unit=10)
        open(unit=10,file='test_c3.in',status='old')
	read(10,*) c,d
	close(unit=10)



        open(unit=10,file='test_x.in',status='old')
        open(unit=21,file='test1.out')
        open(unit=22,file='test2.out')
        open(unit=23,file='test3.out')

	write(21,50)
50      format(' First output file for testmod model')
	write(21,*)
	write(21,*)
	write(21,60)
60      format(' First output file for testmod model: results --->')

	read(10,*) numx
	do 20 i=1,numx
	read(10,*) x
	y=a*x*x*x+b*x*x+c*x+d
	if(i.le.5)then
	  write(21,70) x,x*5.0,y
70	  format(1x,1pe14.7,2x,1pe14.7,2x,1pe14.7)
	else if(i.le.10)then
	  write(22,80) x,y
80	  format(1x,1pe14.7,1x,'result',1pe17.5,'here')
	end if
	if(i.eq.11) then
	  write(23,*)
	  write(23,90)
90	  format(' start reading results here  --> now')
	end if
	write(23,100)x
100	format(' here is the result for x = ',1pg14.7)
	write(23,110)y
110	format(1x,1pe14.7)
20	continue
	close(unit=10)
	close(unit=20)

	end
