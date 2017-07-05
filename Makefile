# Makefile.in --
#
#	This file is a Makefile for tclparser TEA Extension.  If it has the name
#	"Makefile.in" then it is a template for a Makefile;  to generate the
#	actual Makefile, run "./configure", which is a configuration script
#	generated by the "autoconf" program (constructs like "@foo@" will get
#	replaced in the actual Makefile.
#
# Copyright (c) 1999 Scriptics Corporation.
# Copyright (c) 2002-2005 ActiveState Corporation.
#
# See the file "license.terms" for information on usage and redistribution
# of this file, and for a DISCLAIMER OF ALL WARRANTIES.
#
# RCS: @(#) $Id: Makefile.in,v 1.12 2005/03/18 01:23:30 hobbs Exp $

#========================================================================
# Add additional lines to handle any additional AC_SUBST cases that
# have been added in a customized configure script.
#========================================================================

#SAMPLE_NEW_VAR	= @SAMPLE_NEW_VAR@

#========================================================================
# Nothing of the variables below this line should need to be changed.
# Please check the TARGETS section below to make sure the make targets
# are correct.
#========================================================================

#========================================================================
# The names of the source files is defined in the configure script.
# The object files are used for linking into the final library.
# This will be used when a dist target is added to the Makefile.
# It is not important to specify the directory, as long as it is the
# $(srcdir) or in the generic, win or unix subdirectory.
#========================================================================

PKG_SOURCES	=  tclParser.c
PKG_OBJECTS	=  tclParser.o

PKG_STUB_SOURCES = 
PKG_STUB_OBJECTS = 

#========================================================================
# PKG_TCL_SOURCES identifies Tcl runtime files that are associated with
# this package that need to be installed, if any.
#========================================================================

PKG_TCL_SOURCES = 

#========================================================================
# This is a list of public header files to be installed, if any.
#========================================================================

PKG_HEADERS	= 

#========================================================================
# "PKG_LIB_FILE" refers to the library (dynamic or static as per
# configuration options) composed of the named objects.
#========================================================================

PKG_LIB_FILE	= libtclparser1.8.so
PKG_STUB_LIB_FILE = libtclparserstub1.8.a

lib_BINARIES	= $(PKG_LIB_FILE)
BINARIES	= $(lib_BINARIES)

SHELL		= /bin/sh

srcdir		= .
prefix		= /usr
exec_prefix	= /usr

bindir		= ${exec_prefix}/bin
libdir		= ${exec_prefix}/lib64
datadir		= ${prefix}/share
mandir		= ${prefix}/share/man
includedir	= ${prefix}/include

DESTDIR		=

PKG_DIR		= $(PACKAGE_NAME)$(PACKAGE_VERSION)
pkgdatadir	= $(datadir)/$(PKG_DIR)
pkglibdir	= $(libdir)/$(PKG_DIR)
pkgincludedir	= $(includedir)/$(PKG_DIR)

top_builddir	= .

INSTALL		= $(SHELL) $(srcdir)/tclconfig/install-sh -c
INSTALL_PROGRAM	= ${INSTALL}
INSTALL_DATA	= ${INSTALL} -m 644
INSTALL_SCRIPT	= ${INSTALL}

PACKAGE_NAME	= tclparser
PACKAGE_VERSION	= 1.8
CC		= gcc
CFLAGS_DEFAULT	= -O2 -fomit-frame-pointer -DNDEBUG
CFLAGS_WARNING	= -Wall
CLEANFILES	= pkgIndex.tcl
EXEEXT		= 
LDFLAGS_DEFAULT	=  -Wl,--export-dynamic 
MAKE_LIB	= ${SHLIB_LD} -o $@ $(PKG_OBJECTS) ${SHLIB_LD_LIBS} 
MAKE_SHARED_LIB	= ${SHLIB_LD} -o $@ $(PKG_OBJECTS) ${SHLIB_LD_LIBS}
MAKE_STATIC_LIB	= ${STLIB_LD} $@ $(PKG_OBJECTS)
MAKE_STUB_LIB	= ${STLIB_LD} $@ $(PKG_STUB_OBJECTS)
OBJEXT		= o
RANLIB		= :
RANLIB_STUB	= ranlib
SHLIB_CFLAGS	= -fPIC
SHLIB_LD	= ${CC} -shared ${CFLAGS} ${LDFLAGS_DEFAULT}
SHLIB_LD_LIBS	= ${LIBS} -L/usr/lib64 -ltclstub8.6
STLIB_LD	= ${AR} cr
TCL_DEFS	= -DPACKAGE_NAME=\"tcl\" -DPACKAGE_TARNAME=\"tcl\" -DPACKAGE_VERSION=\"8.6\" -DPACKAGE_STRING=\"tcl\ 8.6\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_SYS_PARAM_H=1 -DUSE_THREAD_ALLOC=1 -D_REENTRANT=1 -D_THREAD_SAFE=1 -DHAVE_PTHREAD_ATTR_SETSTACKSIZE=1 -DHAVE_PTHREAD_ATFORK=1 -DTCL_THREADS=1 -DTCL_CFGVAL_ENCODING=\"iso8859-1\" -DHAVE_ZLIB=1 -DMODULE_SCOPE=extern\ __attribute__\(\(__visibility__\(\"hidden\"\)\)\) -DHAVE_HIDDEN=1 -DHAVE_CAST_TO_UNION=1 -DTCL_SHLIB_EXT=\".so\" -DNDEBUG=1 -DTCL_CFG_OPTIMIZED=1 -DTCL_TOMMATH=1 -DMP_PREC=4 -D_LARGEFILE64_SOURCE=1 -DTCL_WIDE_INT_IS_LONG=1 -DHAVE_GETCWD=1 -DHAVE_MKSTEMP=1 -DHAVE_OPENDIR=1 -DHAVE_STRTOL=1 -DHAVE_WAITPID=1 -DHAVE_GETNAMEINFO=1 -DHAVE_GETADDRINFO=1 -DHAVE_FREEADDRINFO=1 -DHAVE_GAI_STRERROR=1 -DHAVE_STRUCT_ADDRINFO=1 -DHAVE_STRUCT_IN6_ADDR=1 -DHAVE_STRUCT_SOCKADDR_IN6=1 -DHAVE_STRUCT_SOCKADDR_STORAGE=1 -DHAVE_GETPWUID_R_5=1 -DHAVE_GETPWUID_R=1 -DHAVE_GETPWNAM_R_5=1 -DHAVE_GETPWNAM_R=1 -DHAVE_GETGRGID_R_5=1 -DHAVE_GETGRGID_R=1 -DHAVE_GETGRNAM_R_5=1 -DHAVE_GETGRNAM_R=1 -DHAVE_GETHOSTBYNAME_R_6=1 -DHAVE_GETHOSTBYNAME_R=1 -DHAVE_GETHOSTBYADDR_R_8=1 -DHAVE_GETHOSTBYADDR_R=1 -DHAVE_TERMIOS_H=1 -DHAVE_SYS_IOCTL_H=1 -DHAVE_SYS_TIME_H=1 -DTIME_WITH_SYS_TIME=1 -DHAVE_GMTIME_R=1 -DHAVE_LOCALTIME_R=1 -DHAVE_MKTIME=1 -DHAVE_TM_GMTOFF=1 -DHAVE_TIMEZONE_VAR=1 -DHAVE_STRUCT_STAT_ST_BLOCKS=1 -DHAVE_STRUCT_STAT_ST_BLKSIZE=1 -DHAVE_BLKCNT_T=1 -DHAVE_INTPTR_T=1 -DHAVE_UINTPTR_T=1 -DNO_UNION_WAIT=1 -DHAVE_SIGNED_CHAR=1 -DHAVE_LANGINFO=1 -DHAVE_MKSTEMPS=1 -DHAVE_FTS=1 -DHAVE_SYS_IOCTL_H=1 -DTCL_UNLOAD_DLLS=1 -DHAVE_CPUID=1
TCL_BIN_DIR	= /usr/lib64
TCL_SRC_DIR	= /home/abuild/rpmbuild/BUILD/tcl8.6.6
# This is necessary for packages that use private Tcl headers
TCL_TOP_DIR_NATIVE	= "/home/abuild/rpmbuild/BUILD/tcl8.6.6"
# Not used, but retained for reference of what libs Tcl required
TCL_LIBS	= ${DL_LIBS} ${LIBS} ${MATH_LIBS}

#========================================================================
# TCLLIBPATH seeds the auto_path in Tcl's init.tcl so we can test our
# package without installing.  The other environment variables allow us
# to test against an uninstalled Tcl.  Add special env vars that you
# require for testing here (like TCLX_LIBRARY).
#========================================================================

EXTRA_PATH	= $(top_builddir):$(TCL_BIN_DIR)
TCLSH_ENV	= TCL_LIBRARY=`echo $(TCL_SRC_DIR)/library` \
		  LD_LIBRARY_PATH="$(EXTRA_PATH):$(LD_LIBRARY_PATH)" \
		  PATH="$(EXTRA_PATH):$(PATH)" \
		  TCLLIBPATH="$(top_builddir)"
TCLSH_PROG	= /usr/bin/tclsh8.6
TCLSH		= $(TCLSH_ENV) $(TCLSH_PROG)
SHARED_BUILD	= 1

INCLUDES	=  -I"/usr/include"

PKG_CFLAGS	=  

# TCL_DEFS is not strictly need here, but if you remove it, then you
# must make sure that configure.in checks for the necessary components
# that your library may use.  TCL_DEFS can actually be a problem if
# you do not compile with a similar machine setup as the Tcl core was
# compiled with.
#DEFS		= $(TCL_DEFS) -DPACKAGE_NAME=\"tclparser\" -DPACKAGE_TARNAME=\"tclparser\" -DPACKAGE_VERSION=\"1.8\" -DPACKAGE_STRING=\"tclparser\ 1.8\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DBUILD_tclparser=/\*\*/ -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_LIMITS_H=1 -DHAVE_SYS_PARAM_H=1 -DUSE_THREAD_ALLOC=1 -D_REENTRANT=1 -D_THREAD_SAFE=1 -DTCL_THREADS=1 -DMODULE_SCOPE=extern\ __attribute__\(\(__visibility__\(\"hidden\"\)\)\) -DHAVE_HIDDEN=1 -DHAVE_CAST_TO_UNION=1 -D_LARGEFILE64_SOURCE=1 -DTCL_WIDE_INT_IS_LONG=1 -DUSE_TCL_STUBS=1 $(PKG_CFLAGS)
DEFS		= -DPACKAGE_NAME=\"tclparser\" -DPACKAGE_TARNAME=\"tclparser\" -DPACKAGE_VERSION=\"1.8\" -DPACKAGE_STRING=\"tclparser\ 1.8\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DBUILD_tclparser=/\*\*/ -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_LIMITS_H=1 -DHAVE_SYS_PARAM_H=1 -DUSE_THREAD_ALLOC=1 -D_REENTRANT=1 -D_THREAD_SAFE=1 -DTCL_THREADS=1 -DMODULE_SCOPE=extern\ __attribute__\(\(__visibility__\(\"hidden\"\)\)\) -DHAVE_HIDDEN=1 -DHAVE_CAST_TO_UNION=1 -D_LARGEFILE64_SOURCE=1 -DTCL_WIDE_INT_IS_LONG=1 -DUSE_TCL_STUBS=1 $(PKG_CFLAGS)

CONFIG_CLEAN_FILES = Makefile

CPPFLAGS	= 
LIBS		=  
AR		= ar
CFLAGS		=  -pipe ${CFLAGS_DEFAULT} ${CFLAGS_WARNING} ${SHLIB_CFLAGS} 
COMPILE		= $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)

#========================================================================
# Start of user-definable TARGETS section
#========================================================================

#========================================================================
# TEA TARGETS.  Please note that the "libraries:" target refers to platform
# independent files, and the "binaries:" target inclues executable programs and
# platform-dependent libraries.  Modify these targets so that they install
# the various pieces of your package.  The make and install rules
# for the BINARIES that you specified above have already been done.
#========================================================================

all: binaries libraries doc

#========================================================================
# The binaries target builds executable programs, Windows .dll's, unix
# shared/static libraries, and any other platform-dependent files.
# The list of targets to build for "binaries:" is specified at the top
# of the Makefile, in the "BINARIES" variable.
#========================================================================

binaries: $(BINARIES) pkgIndex.tcl-hand

libraries:

doc:

#	Currently no documentation to create, the HTML is part of the
#	distribution.
#	.................................................................
#	@echo "If you have documentation to create, place the commands to"
#	@echo "build the docs in the 'doc:' target.  For example:"
#	@echo "        xml2nroff sample.xml > sample.n"
#	@echo "        xml2html sample.xml > sample.html"

install: all install-binaries install-libraries install-doc

install-binaries: binaries install-lib-binaries install-bin-binaries

#========================================================================
# This rule installs platform-independent files, such as header files.
#========================================================================

install-libraries: libraries
	@mkdir -p $(DESTDIR)$(includedir)
	@echo "Installing header files in $(DESTDIR)$(includedir)"
	@list='$(PKG_HEADERS)'; for i in $$list; do \
	    echo "Installing $(srcdir)/$$i" ; \
	    $(INSTALL_DATA) $(srcdir)/$$i $(DESTDIR)$(includedir) ; \
	done;

#========================================================================
# Install documentation.  Unix manpages should go in the $(mandir)
# directory.
#========================================================================

install-doc: doc

#	@mkdir -p $(DESTDIR)$(mandir)/mann
#	@echo "Installing documentation in $(DESTDIR)$(mandir)"
#	@for i in doc/*.n; do \
#	    echo "Installing $$i"; \
#	    rm -f $(DESTDIR)$(mandir)/mann/`basename $$i`; \
#	    $(INSTALL_DATA) $$i $(DESTDIR)$(mandir)/mann ; \
#	done

test: binaries libraries
	$(TCLSH) `echo $(srcdir)/tests/all.tcl` $(TESTFLAGS)

shell: binaries libraries
	@$(TCLSH) $(SCRIPT)

gdb:
	$(TCLSH_ENV) gdb $(TCLSH_PROG) $(SCRIPT)

depend:

#========================================================================
# $(PKG_LIB_FILE) should be listed as part of the BINARIES variable
# mentioned above.  That will ensure that this target is built when you
# run "make binaries".
#
# The $(PKG_OBJECTS) objects are created and linked into the final
# library.  In most cases these object files will correspond to the
# source files above.
#========================================================================

$(PKG_LIB_FILE): $(PKG_OBJECTS)
	-rm -f $(PKG_LIB_FILE)
	${MAKE_LIB}
	$(RANLIB) $(PKG_LIB_FILE)

$(PKG_STUB_LIB_FILE): $(PKG_STUB_OBJECTS)
	-rm -f $(PKG_STUB_LIB_FILE)
	${MAKE_STUB_LIB}
	$(RANLIB_STUB) $(PKG_STUB_LIB_FILE)

#========================================================================
# We need to enumerate the list of .c to .o lines here.
#
# In the following lines, $(srcdir) refers to the toplevel directory
# containing your extension.  If your sources are in a subdirectory,
# you will have to modify the paths to reflect this:
#
# tclparser.$(OBJEXT): $(srcdir)/generic/tclparser.c
# 	$(COMPILE) -c `echo $(srcdir)/generic/tclparser.c` -o $@
#
# Setting the VPATH variable to a list of paths will cause the makefile
# to look into these paths when resolving .c to .obj dependencies.
# As necessary, add $(srcdir):$(srcdir)/compat:....
#========================================================================

VPATH = $(srcdir)/generic:$(srcdir)/unix:$(srcdir)/win

.c.o:
	$(COMPILE) -c `echo $<` -o $@

#========================================================================
# Create the pkgIndex.tcl file.
# It is usually easiest to let Tcl do this for you with pkg_mkIndex, but
# you may find that you need to customize the package.  If so, either
# modify the -hand version, or create a pkgIndex.tcl.in file and have
# the configure script output the pkgIndex.tcl by editing configure.in.
#
# Note that the package is called 'parser' internally, tclparser otherwise.
#========================================================================

pkgIndex.tcl:
	( echo pkg_mkIndex . $(PKG_LIB_FILE) \; exit; ) | $(TCLSH)

pkgIndex.tcl-hand:
	(echo 'package ifneeded parser $(PACKAGE_VERSION) \
	    [list load [file join $$dir $(PKG_LIB_FILE)]]'\
	) > pkgIndex.tcl

#========================================================================
# Distribution creation
# You may need to tweak this target to make it work correctly.
#========================================================================

#COMPRESS	= tar cvf $(PKG_DIR).tar $(PKG_DIR); compress $(PKG_DIR).tar
COMPRESS	= gtar zcvf $(PKG_DIR).tar.gz $(PKG_DIR)
DIST_ROOT	= /tmp/dist
DIST_DIR	= $(DIST_ROOT)/$(PKG_DIR)

dist-clean:
	rm -rf $(DIST_DIR) $(DIST_ROOT)/$(PKG_DIR).tar.*

dist: dist-clean doc
	mkdir -p $(DIST_DIR)
	cp -p $(srcdir)/ChangeLog $(srcdir)/README* $(srcdir)/doc/license* \
		$(srcdir)/aclocal.m4 $(srcdir)/configure $(srcdir)/*.in \
		$(DIST_DIR)/
	chmod 664 $(DIST_DIR)/Makefile.in $(DIST_DIR)/aclocal.m4
	chmod 775 $(DIST_DIR)/configure $(DIST_DIR)/configure.in

	mkdir $(DIST_DIR)/tclconfig
	cp $(srcdir)/tclconfig/install-sh $(srcdir)/tclconfig/tcl.m4 \
		$(DIST_DIR)/tclconfig/
	chmod 664 $(DIST_DIR)/tclconfig/tcl.m4
	chmod +x $(DIST_DIR)/tclconfig/install-sh

	-list='htdocs/art demos generic library mac tests unix win tea.tests tools tools/rules'; \
	for p in $$list; do \
	    if test -d $(srcdir)/$$p ; then \
		mkdir -p $(DIST_DIR)/$$p; \
		cp -p $(srcdir)/$$p/*.* $(srcdir)/$$p/* $(DIST_DIR)/$$p/; \
	    fi; \
	done

	-list='doc'; \
	for p in $$list; do \
	    if test -d $$p ; then \
		mkdir -p $(DIST_DIR)/$$p; \
		cp -p $$p/*.* $$p/* $(DIST_DIR)/$$p/; \
	    fi; \
	done
	-mv $(DIST_DIR)/htdocs/art $(DIST_DIR)/doc/art
	rm -rf $(DIST_DIR)/htdocs

	(cd $(DIST_ROOT); $(COMPRESS);)

dist_orig:
	rm -rf $(PKG_DIR)*
	ls -d $(srcdir)/* > __FILES
	mkdir $(PKG_DIR)
	cp -rf `cat __FILES | grep -v __FILES` $(PKG_DIR)
	rm __FILES
	find $(PKG_DIR) -name CVS -prune -exec rm -rf {} \;
	cd $(PKG_DIR) ; $(TCLSH_PROG) PREPARE
	-tar cf - $(PKG_DIR) | gzip --best > $(PKG_DIR).tar.gz
	-tar cf - $(PKG_DIR) | bzip2 > $(PKG_DIR).tar.bz2
	-zip -r $(PKG_DIR).zip $(PKG_DIR)
	rm -rf $(PKG_DIR)

#========================================================================
# End of user-definable section
#========================================================================

#========================================================================
# Don't modify the file to clean here.  Instead, set the "CLEANFILES"
# variable in configure.in
#========================================================================

clean:  
	-test -z "$(BINARIES)" || rm -f $(BINARIES)
	-rm -f *.$(OBJEXT) core *.core
	-test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean: clean
	-rm -f *.tab.c
	-rm -f $(CONFIG_CLEAN_FILES)
	-rm -f config.cache config.log config.status

#========================================================================
# Install binary object libraries.  On Windows this includes both .dll and
# .lib files.  Because the .lib files are not explicitly listed anywhere,
# we need to deduce their existence from the .dll file of the same name.
# Library files go into the lib directory.
# In addition, this will generate the pkgIndex.tcl
# file in the install location (assuming it can find a usable tclsh shell)
#
# You should not have to modify this target.
#========================================================================

install-lib-binaries:
	@mkdir -p $(DESTDIR)$(pkglibdir)
	@list='$(lib_BINARIES)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo " $(INSTALL_PROGRAM) $$p $(DESTDIR)$(pkglibdir)/$$p"; \
	    $(INSTALL_PROGRAM) $$p $(DESTDIR)$(pkglibdir)/$$p; \
	    stub=`echo $$p|sed -e "s/.*\(stub\).*/\1/"`; \
	    if test "x$$stub" = "xstub"; then \
		echo " $(RANLIB_STUB) $(DESTDIR)$(pkglibdir)/$$p"; \
		$(RANLIB_STUB) $(DESTDIR)$(pkglibdir)/$$p; \
	    else \
		echo " $(RANLIB) $(DESTDIR)$(pkglibdir)/$$p"; \
		$(RANLIB) $(DESTDIR)$(pkglibdir)/$$p; \
	    fi; \
	    ext=`echo $$p|sed -e "s/.*\.//"`; \
	    if test "x$$ext" = "xdll"; then \
		lib=`basename $$p|sed -e 's/.[^.]*$$//'`.lib; \
		if test -f $$lib; then \
		    echo " $(INSTALL_DATA) $$lib $(DESTDIR)$(pkglibdir)/$$lib"; \
	            $(INSTALL_DATA) $$lib $(DESTDIR)$(pkglibdir)/$$lib; \
		fi; \
	    fi; \
	  fi; \
	done
	@list='$(PKG_TCL_SOURCES)'; for p in $$list; do \
	  if test -f $(srcdir)/$$p; then \
	    destp=`basename $$p`; \
	    echo " Install $$destp $(DESTDIR)$(pkglibdir)/$$destp"; \
	    $(INSTALL_DATA) $(srcdir)/$$p $(DESTDIR)$(pkglibdir)/$$destp; \
	  fi; \
	done
	@if test "x$(SHARED_BUILD)" = "x1"; then \
	    echo " Install pkgIndex.tcl $(DESTDIR)$(pkglibdir)"; \
	    $(INSTALL_DATA) pkgIndex.tcl $(DESTDIR)$(pkglibdir); \
	fi

#========================================================================
# Install binary executables (e.g. .exe files and dependent .dll files)
# This is for files that must go in the bin directory (located next to
# wish and tclsh), like dependent .dll files on Windows.
#
# You should not have to modify this target, except to define bin_BINARIES
# above if necessary.
#========================================================================

install-bin-binaries:
	@mkdir -p $(DESTDIR)$(bindir)
	@list='$(bin_BINARIES)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo " $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$p"; \
	    $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$p; \
	  fi; \
	done

.SUFFIXES: .c .$(OBJEXT)

Makefile: $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES=$@ CONFIG_HEADERS= $(SHELL) ./config.status

uninstall-binaries:
	list='$(lib_BINARIES)'; for p in $$list; do \
	  rm -f $(DESTDIR)$(pkglibdir)/$$p; \
	done
	list='$(PKG_TCL_SOURCES)'; for p in $$list; do \
	  p=`basename $$p`; \
	  rm -f $(DESTDIR)$(pkglibdir)/$$p; \
	done
	list='$(bin_BINARIES)'; for p in $$list; do \
	  rm -f $(DESTDIR)$(bindir)/$$p; \
	done

#========================================================================
# Target to regenerate header files and stub files from the *.decls tables.
#========================================================================

genstubs:
	$(TCLSH_PROG)	\
		$(srcdir)/tools/genStubs.tcl $(srcdir)/generic	\
		$(srcdir)/generic/tclparser.decls			\
		$(srcdir)/generic/tclparserInt.decls

#========================================================================
# Target to check that all exported functions have an entry in the stubs
# tables.
#========================================================================

tclparser_DECLS = \
	$(srcdir)/generic/tclparser.decls	\
	$(srcdir)/generic/tclparserInt.decls

checkstubs:
	-@for i in `nm -p $(tclparser_LIB_FILE) | awk '$$2 ~ /T/ { print $$3 }' \
		| sort -n`; do \
		match=0; \
		for j in $(tclparser_DECLS); do \
		    if [ `grep -c $$i $$j` -gt 0 ]; then \
			match=1; \
		    fi; \
		done; \
		if [ $$match -eq 0 ]; then echo $$i; fi \
	done


.PHONY: all binaries clean depend distclean doc install libraries test

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT: