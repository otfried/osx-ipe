#
# Compile and install spiro
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/libspiro-*.tar.gz
	mv libspiro-* libspiro
	cd libspiro && ./configure --disable-shared --enable-static \
		--prefix=$(IPEDEPS) \
		LS_CFLAGS="$(MAC_OS_MIN)"
	cd libspiro && make
	cd libspiro && make install

clean:
	rm -fr libspiro
