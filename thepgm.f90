! thepgm - Cause additions to cascade.
!
! Description (a.o.t. verb phrase): Interactive Pascal's Triangle.
!
program thepgm


contains

  ! Main Loop Input - Enter program data.
  !
  ! There is a basic need for three commands, each to be a single character: "decrease by one", "stay the same", and "increase by one".
  ! These are the commands for controlling the simulation.
  !
  ! There can be, perhaps, less than basic needs for two more commands, which might be added later. Each can be one character.
  ! * "help" -- display instructions. We developers can do without this for now, and should not do it until we know what works.
  ! * "quit" -- exit the program.  "clean exit" is not required. For now, control-C works fine.
  ! These could be the commands for controlling the simulator program.
  !
  ! The three characters returned are to be - 0 + .
  !
  !  ! test program for mainloopinput
  !  do i=1, 10
  !    print *,':',mainloopinput(),':'
  !  end do
  !
  character*1 function mainloopinput()
    character*1 x
    mainloopinput = 'c'
    do while (mainloopinput .eq. 'c')
      read(*,'(a1)')   x
      if ( x .eq. '1' ) mainloopinput = '-'
      if ( x .eq. '2' ) mainloopinput = '0'
      if ( x .eq. '3' ) mainloopinput = '+'
    end do
  end function mainloopinput
end program thepgm
