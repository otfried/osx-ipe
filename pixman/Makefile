#
# Compile and install pixman
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/pixman-*.tar.gz
	mv pixman-* pixman
	cd pixman && \
		export PKG_CONFIG_PATH=$(IPEDEPS)/lib/pkgconfig && \
		export CFLAGS="-Os $(MAC_OS_MIN)" && \
		export LDFLAGS="$(MAC_OS_MIN)" && \
		./configure --prefix=$(IPEDEPS) && \
		make && \
		make install
	rm $(IPEDEPS)/lib/libpixman*.a $(IPEDEPS)/lib/libpixman*.la
	rm -fr $(IPEDEPS)/share
	cd $(IPEDEPS)/lib && \
		install_name_tool -id @executable_path/../Frameworks/libpixman-1.0.dylib libpixman-1.0.dylib

clean:
	rm -fr pixman
