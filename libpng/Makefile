#
# Compile and install libpng
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/libpng-*.tar.gz
	mv libpng-* libpng
	cd libpng && \
		export PKG_CONFIG_PATH=$(IPEDEPS)/lib/pkgconfig && \
		export CFLAGS="-Os $(MAC_OS_MIN)" && \
		export LDFLAGS="$(MAC_OS_MIN)" && \
		./configure --prefix=$(IPEDEPS) && \
		make && \
		make install
	rm $(IPEDEPS)/lib/libpng*.a $(IPEDEPS)/lib/libpng*.la
	rm $(IPEDEPS)/include/png*.h
	rm $(IPEDEPS)/bin/pngfix $(IPEDEPS)/bin/png-fix-itxt
	sed -i.bak '/^Requires.private:/d' $(IPEDEPS)/lib/pkgconfig/libpng16.pc
	ls -R $(IPEDEPS)
	cd $(IPEDEPS)/lib && \
		install_name_tool -id @executable_path/../Frameworks/libpng16.16.dylib libpng16.16.dylib

clean:
	rm -fr libpng
