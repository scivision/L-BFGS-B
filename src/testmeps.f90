program test

use, intrinsic :: iso_fortran_env, only : dp=>real64
use, intrinsic :: ieee_arithmetic, only : ieee_next_after

implicit none (type, external)
external :: dpmeps

real(dp) :: en, ep

en = epsilon(1._dp)
call dpmeps(ep)

print *, en, ep
print *, ieee_next_after(1._dp, 2._dp)

end program
