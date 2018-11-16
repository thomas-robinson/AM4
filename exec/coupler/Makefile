# Makefile created by mkmf 19.3.0

CPPDEFS = -DINTERNAL_FILE_NML

OTHERFLAGS = -I$(BUILDROOT)atmos_dyn -I$(BUILDROOT)ice_sis -I$(BUILDROOT)atmos_phys -I$(BUILDROOT)land_lad2 -I$(BUILDROOT)fms

include $(MK_TEMPLATE)


.DEFAULT:
	-echo $@ does not exist.
all: libcoupler.a
coupler_main.o: $(SRCROOT)coupler/simple/coupler_main.F90 flux_exchange.o ice_model.o surface_flux.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)coupler/simple/coupler_main.F90
flux_exchange.o: $(SRCROOT)coupler/simple/flux_exchange.F90 ice_model.surface_flux.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)coupler/simple/flux_exchange.F90
ice_model.o: $(SRCROOT)coupler/simple/ice_model.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)coupler/simple/ice_model.F90
surface_flux.o: $(SRCROOT)coupler/shared/surface_flux.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)coupler/shared/surface_flux.F90

SRC = $(SRCROOT)coupler/simple/ice_model.F90 $(SRCROOT)coupler/shared/surface_flux.F90 $(SRCROOT)coupler/simple/coupler_main.F90 $(SRCROOT)coupler/simple/flux_exchange.F90
OBJ = ice_model.o surface_flux.o coupler_main.o flux_exchange.o

clean: neat
	$(RM) $(OBJ) libcoupler.a
	$(RM) *.mod

neat:
	$(RM) $(TMPFILES)

TAGS: $(SRC)
	etags $(SRC)

tags: $(SRC)
	ctags $(SRC)

libcoupler.a: $(OBJ)
	$(AR) $(ARFLAGS) libcoupler.a $(OBJ)

