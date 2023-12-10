#
# Compile and install cairo
#

include ../common.mak

.PHONY: all clean

all:
	tar xJvf ../pkg/cairo-*.tar.xz
	mv cairo-* cairo
	cd cairo && \
		export PKG_CONFIG_LIBDIR=$(IPEDEPS)/lib/pkgconfig && \
		export CFLAGS="-Os $(OSXTARGET)" && \
		export LDFLAGS="$(OSXTARGET)" && \
		meson setup --buildtype=release --prefix=$(IPEDEPS) \
			-Dfontconfig=disabled -Dglib=disabled -Ddwrite=disabled \
			-Dfreetype=enabled -Dpng=enabled \
			build && \
		cd build && meson compile && meson install
	rm $(IPEDEPS)/lib/libcairo-script-interpreter.*
	rm -fr $(IPEDEPS)/lib/cairo
	rm $(IPEDEPS)/bin/cairo-trace
	rm -fr $(IPEDEPS)/share
	cd $(IPEDEPS)/lib && \
		$(NAMETOOL) -id @executable_path/../Frameworks/libpixman-1.0.dylib libpixman-1.0.dylib && \
		$(NAMETOOL) -id @executable_path/../Frameworks/libcairo.2.dylib libcairo.2.dylib && \
		$(NAMETOOL) -change $(IPEDEPS)/lib/libpixman-1.0.dylib \
			@executable_path/../Frameworks/libpixman-1.0.dylib libcairo.2.dylib
	rm -fr cairo
