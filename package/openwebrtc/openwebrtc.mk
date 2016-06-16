################################################################################
#
# openwebrtc
#
################################################################################

OPENWEBRTC_VERSION = fc0ffff2421bcee6c16010a306b0804af9792cf4
OPENWEBRTC_SITE = $(call github,EricssonResearch,openwebrtc,$(OPENWEBRTC_VERSION))
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
