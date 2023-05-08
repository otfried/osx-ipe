#
# Compile and install qhull
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/qhull-*.tgz
	cd qhull-* && make
	cp qhull-*/lib/libqhullstatic_r.a $(IPEDEPS)/lib/libqhull_r.a
	mkdir -p $(IPEDEPS)/include/libqhull_r
	cp qhull-*/src/libqhull_r/*.h $(IPEDEPS)/include/libqhull_r

clean:
	rm -fr qhull-*
