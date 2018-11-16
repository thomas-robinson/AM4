# Makefile created by mkmf 19.3.0

CPPDEFS = -DINTERNAL_FILE_NML

OTHERFLAGS = -I$(BUILDROOT)mom6 -I$(BUILDROOT)fms

include $(MK_TEMPLATE)


.DEFAULT:
	-echo $@ does not exist.
all: libice_sis.a
ice_albedo.o: $(SRCROOT)ice_param/ice_albedo.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)ice_param/ice_albedo.F90
ocean_albedo.o: $(SRCROOT)ice_param/ocean_albedo.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)ice_param/ocean_albedo.F90
ocean_rough.o: $(SRCROOT)ice_param/ocean_rough.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)ice_param/ocean_rough.F90

SRC = $(SRCROOT)ice_param/ocean_albedo.F90 $(SRCROOT)ice_param/ice_albedo.F90 $(SRCROOT)ice_param/ocean_rough.F90
OBJ = ocean_albedo.o ice_albedo.o ocean_rough.o

clean: neat
	$(RM) $(OBJ) libice_sis.a
	$(RM) *.mod

neat:
	$(RM) -f $(TMPFILES)

TAGS: $(SRC)
	etags $(SRC)

tags: $(SRC)
	ctags $(SRC)

libice_sis.a: $(OBJ)
	$(AR) $(ARFLAGS) libice_sis.a $(OBJ)

