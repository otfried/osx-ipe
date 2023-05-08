#
# Compile and install qhull
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/qhull-*.tgz
	mv qhull-* qhull
	cd qhull && make CC="clang $(MAC_OS_MIN)"
	cp qhull/lib/libqhullstatic_r.a $(IPEDEPS)/lib/libqhull_r.a
	mkdir -p $(IPEDEPS)/include/libqhull_r
	cp qhull/src/libqhull_r/*.h $(IPEDEPS)/include/libqhull_r

clean:
	rm -fr qhull
