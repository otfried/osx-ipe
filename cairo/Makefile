#
# Compile and install cairo
#

include ../common.mak

.PHONY: all clean

all:
	tar xJvf ../pkg/cairo-*.tar.xz
	mv cairo-* cairo
	cd cairo && \
		export PKG_CONFIG_PATH=$(IPEDEPS)/lib/pkgconfig && \
		export CFLAGS="-Os $(MAC_OS_MIN)" && \
		export LDFLAGS="$(MAC_OS_MIN)" && \
		./configure --prefix=$(IPEDEPS) \
		    --enable-win32-font=no --enable-fc=no \
		    --enable-script=yes --enable-win32=no \
		    --enable-pdf=yes --enable-ps=yes --enable-svg=yes \
		    --enable-gobject=no --enable-png=yes \
		    --enable-xlib=no --enable-xcb=no && \
		make && \
		make install
	rm $(IPEDEPS)/lib/libcairo*.a $(IPEDEPS)/lib/libcairo*.la
	rm -fr $(IPEDEPS)/lib/cairo
	rm $(IPEDEPS)/bin/cairo-trace
	rm -fr $(IPEDEPS)/share
	cd $(IPEDEPS)/lib && \
		install_name_tool -id @executable_path/../Frameworks/libcairo.2.dylib libcairo.2.dylib

clean:
	rm -fr cairo
