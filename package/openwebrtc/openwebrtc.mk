################################################################################
#
# openwebrtc
#
################################################################################

OPENWEBRTC_VERSION = 3a431f326321440c52fb4cde109a96ed755c9bae
OPENWEBRTC_SITE = $(call github,Metrological,openwebrtc,$(OPENWEBRTC_VERSION))
OPENWEBRTC_LICENSE = BSD-2 Clause
OPENWEBRTC_LICENSE_FILES = LICENSE

OPENWEBRTC_INSTALL_STAGING = YES
OPENWEBRTC_AUTORECONF = YES

OPENWEBRTC_DEPENDENCIES = gst1-openwebrtc libnice pulseaudio

OPENWEBRTC_CONF_OPTS += \
	--enable-owr-gst \
	--disable-bridge \
	--disable-introspection \
	--disable-gtk-doc

$(eval $(autotools-package))
