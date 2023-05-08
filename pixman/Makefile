#
# Compile and install pixman
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/pixman-*.tar.gz
	mv pixman-* pixman
	cd pixman && \
		export PKG_CONFIG_LIBDIR=$(IPEDEPS)/lib/pkgconfig && \
		export CFLAGS="-Os $(OSXTARGET)" && \
		export LDFLAGS="$(OSXTARGET)" && \
		./configure --prefix=$(IPEDEPS) && \
		make && \
		make install
	rm $(IPEDEPS)/lib/libpixman*.a $(IPEDEPS)/lib/libpixman*.la
	rm -fr $(IPEDEPS)/share
	cd $(IPEDEPS)/lib && \
		$(NAMETOOL) -id @executable_path/../Frameworks/libpixman-1.0.dylib libpixman-1.0.dylib

clean:
	rm -fr pixman
