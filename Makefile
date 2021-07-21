ifndef $(FC)
FC=gfortran
endif

# FFLAGS = -sloppy -C -d1 -g -temp=/tmp -u

DRIVER1 = examples/driver1.f
DRIVER2 = examples/driver2.f
DRIVER3 = examples/driver3.f

ROUTINES = src/src.f src/blas1.f src/dpmeps.f src/linpack.f src/timer.f

all :  lbfgsb1 lbfgsb2 lbfgsb3

lbfgsb1 : $(DRIVER1) $(ROUTINES)
	$(FC) $(FFLAGS) $(DRIVER1) $(ROUTINES) -o x.lbfgsb1

lbfgsb2 : $(DRIVER2) $(ROUTINES)
	$(FC) $(FFLAGS) $(DRIVER2) $(ROUTINES) -o x.lbfgsb2

lbfgsb3 : $(DRIVER3) $(ROUTINES)
	$(FC) $(FFLAGS) $(DRIVER3) $(ROUTINES) -o x.lbfgsb3
