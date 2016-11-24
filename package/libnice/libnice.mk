################################################################################
#
# libnice
#
################################################################################

LIBNICE_VERSION = 2803a0b4b70af9684e05ef5ed3f0c2fbca4b6c93
LIBNICE_SITE = http://cgit.freedesktop.org/libnice/libnice/snapshot
BR_NO_CHECK_HASH_FOR += $(LIBNICE_SOURCE)
LIBNICE_LICENSE = MPLv1.1 or LGPLv2.1
LIBNICE_LICENSE_FILES = COPYING COPYING.MPL COPYING.LGPL
LIBNICE_DEPENDENCIES = libglib2 host-pkgconf
LIBNICE_INSTALL_STAGING = YES
# For 0001-configure-Fix-configure-failure-when-building-without-.patch
LIBNICE_AUTORECONF = YES

define LIBNICE_RUN_AUTOGEN
        cd $(@D) && PATH=$(BR_PATH) NOCONFIGURE=1 ./autogen.sh
endef
LIBNICE_PRE_CONFIGURE_HOOKS += LIBNICE_RUN_AUTOGEN

LIBNICE_CONF_OPTS += --enable-compile-warnings=no

ifeq ($(BR2_PACKAGE_GSTREAMER1),)
LIBNICE_CONF_OPTS += --without-gstreamer
else
LIBNICE_DEPENDENCIES += gstreamer1 gst1-plugins-base
endif

ifeq ($(BR2_PACKAGE_GSTREAMER),)
LIBNICE_CONF_OPTS += --without-gstreamer-0.10
else
LIBNICE_DEPENDENCIES += gstreamer gst-plugins-base
endif

$(eval $(autotools-package))
