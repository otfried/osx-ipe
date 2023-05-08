#
# Compile and install freetype
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/freetype-*.tar.gz
	mv freetype-* freetype
	cd freetype && \
		export PKG_CONFIG_LIBDIR=$(IPEDEPS)/lib/pkgconfig && \
		export CFLAGS="-Os $(OSXTARGET)" && \
		export LDFLAGS="$(OSXTARGET)" && \
		./configure --prefix=$(IPEDEPS) --with-png=no && \
		make && \
		make install
	rm $(IPEDEPS)/lib/libfreetype*.a $(IPEDEPS)/lib/libfreetype*.la
	rm -fr $(IPEDEPS)/share
	cd $(IPEDEPS)/lib && \
		$(NAMETOOL) -id @executable_path/../Frameworks/libfreetype.6.dylib libfreetype.6.dylib

clean:
	rm -fr freetype
