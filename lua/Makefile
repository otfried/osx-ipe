#
# Compile and install lua
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/lua-*.tar.gz
	cp luamake-5.4.4.mak lua-*/src/Makefile
	cd lua-* && make macosx MAC_OS_MIN=$(MAC_OS_MIN)
	cd lua-*/src && install_name_tool -id @executable_path/../Frameworks/liblua54.dylib liblua54.dylib
	cp lua-*/src/liblua54.dylib $(IPEDEPS)/lib
	mkdir -p $(IPEDEPS)/include/lua
	cd lua-*/src &&	cp lua.h luaconf.h lualib.h lauxlib.h $(IPEDEPS)/include/lua

clean:
	rm -fr lua-*
