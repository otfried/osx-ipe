#
# Common definitions
#

IPEDEPS = $(abspath ../osxlibs)

UNAME = $(shell uname)
ifeq "$(UNAME)" "Darwin"

MAC_OS_MIN = "-mmacosx-version-min=10.10"

else

MAC_OS_MIN =

endif
