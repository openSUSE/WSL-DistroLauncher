bin_PROGRAMS = DistroLauncher

messages.rc: messages.mc
	$(MC) $<

messages.h: messages.rc

# Hacky: no winres.h available with mingw, force include of winresrc.h
# to get the LANG_* and SUBLANG_* defines.
winres.h:
	echo "#include <winresrc.h>" > winres.h

DistroLauncher-res.$(OBJEXT): DistroLauncher.rc \
							   messages.rc \
							   distro.rc \
							   resource.h \
							   winres.h
	$(RC) -D _UNICODE -D UNICODE -l "0x0409" -I $(DISTRO_ID) \
		  --input-format rc -i DistroLauncher.rc \
		  --output-format coff -o $@

BUILT_SOURCES = messages.h

DistroLauncher_SOURCES = \
						 config.h \
						 DistroLauncher.cpp \
						 DistributionInfo.cpp \
						 DistributionInfo.h \
						 Helpers.cpp \
						 Helpers.h \
						 resource.h \
						 stdafx.cpp \
						 stdafx.h \
						 targetver.h \
						 WslApiLoader.cpp \
						 WslApiLoader.h \
						 DistroLauncher.rc

DistroLauncher_CPPFLAGS = -DMINGW_HAS_SECURE_API -municode -mconsole -m64 -std=c++17 -fpermissive
DistroLauncher_LDFLAGS = -municode -mconsole -m64 -static
DistroLauncher_LDADD = DistroLauncher-res.$(OBJEXT)
