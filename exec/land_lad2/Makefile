# Makefile created by mkmf 19.3.0

CPPDEFS = -DINTERNAL_FILE_NML

OTHERFLAGS = -I$(BUILDROOT)fms

include $(MK_TEMPLATE)


.DEFAULT:
	-echo $@ does not exist.
all: libland_lad2.a
land_model.o: $(SRCROOT)land_null/land_model.F90 
	$(eval preproc := $(addsuffix .DO_NOT_MODIFY.f90,$(basename $(notdir $<))))
	cpp -nostdinc -C -v $(CPPDEFS) $(CPPFLAGS) $< > $(preproc) -I$(SRCROOT)land_lad2/shared
	$(FC) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -o $@ 	$(preproc)

SRC =  $(SRCROOT)land_null/land_model.F90
OBJ =  land_model.o

clean: neat
	$(RM) $(OBJ) libland_lad2.a
	$(RM) *.DO_NOT_MODIFY.f90
	$(RM) *.mod

neat:
	$(RM) $(TMPFILES)

TAGS: $(SRC)
	etags $(SRC)

tags: $(SRC)
	ctags $(SRC)

libland_lad2.a: $(OBJ)
	$(AR) $(ARFLAGS) libland_lad2.a $(OBJ)

