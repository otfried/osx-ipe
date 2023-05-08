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
		LS_CFLAGS="$(MAC_OS_MIN)" && \
		make && \
		make install
	rm -fr $(IPEDEPS)/share

clean:
	rm -fr libspiro
