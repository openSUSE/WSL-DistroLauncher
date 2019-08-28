AC_INIT([DistroLauncher], [1.0.0])
AM_INIT_AUTOMAKE([foreign])

AC_PROG_CXX
AC_CHECK_PROG(ICONV_CHECK, iconv, yes)
if test x"$ICONV_CHECK" != "xyes"; then
    AC_MSG_ERROR([iconv could not be found])
fi


AC_ARG_WITH([distro-id],
            [AC_HELP_STRING([--with-distro-id="MyDistro.1.0"],
                            ["Short name of the distribution, to be used as a unique ID."])],
            [], [with_distro_id="MyDistro.1.0"])
AC_SUBST([DISTRO_ID], ["$with_distro_id"])

AC_ARG_WITH([distro-name],
            [AC_HELP_STRING([--with-distro-name="My Distro Name"],
                            ["Display name of the distribution."])],
            [], [with_distro_name="My Distro Name"])
AC_SUBST([DISTRO_NAME], ["$with_distro_name"])

AC_ARG_WITH([distro-icon],
            [AC_HELP_STRING([--with-distro-icon="path/to/distro/icon"],
                            ["Icon of the distribution in ico format."])],
            [], [with_distro_icon="images/icon.ico"])
AC_SUBST([DISTRO_ICON], ["$with_distro_icon"])


#
# Look for windmc and windres
#
AC_ARG_WITH([windmc],
            [AC_HELP_STRING([--with-windmc="/path/to/windmc"],
                            ["Path to the windmc binary."])],
            [],
            [with_windmc="windmc"])
AC_SUBST([MC], ["$with_windmc"])

AC_ARG_WITH([windres],
            [AC_HELP_STRING([--with-windres="/path/to/windres"],
                            ["Path to the windres binary."])],
            [],
            [with_windres="windres"])
AC_SUBST([RC], ["$with_windres"])


AC_CONFIG_FILES([Makefile
                 DistroLauncher/Makefile
                 DistroLauncher/distro.rc
                 DistroLauncher/config.h])
AC_OUTPUT
