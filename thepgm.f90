! thepgm - Cause additions to cascade.
!
! Description (a.o.t. verb phrase): Interactive Pascal's Triangle.
!
program thepgm

  integer i, j, k, l
  integer ii
  character*1 cmd

  cmd = '0'
  i = 1
  j = 1
  k = 1
  l = 1
  do ii=1,20

    print *, cmd,' -----------',i,'---',j,'---',k,'---',l,'---'

    if ( i .eq. 0 .and. j .eq. 0 .and. k .eq. 0 .and. l .eq. 0 ) stop

    if      ( ii .lt. 10 ) then
      cmd='+'
    else if ( ii .lt. 15 ) then
      cmd='-'
    else
      cmd='0'
    end if

    if ( cmd .eq. '-' ) i = i-1
    if ( cmd .eq. '+' ) i = i+1

    j = j+i
    k = k+j
    l = l+k

  end do

end
