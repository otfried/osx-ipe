#
# Common definitions
#

IPEDEPS = $(abspath ../osxlibs)

UNAME = $(shell uname)
ifeq "$(UNAME)" "Darwin"
NAMETOOL = install_name_tool
else
NAMETOOL = echo
endif
