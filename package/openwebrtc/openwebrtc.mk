################################################################################
#
# openwebrtc
#
################################################################################

OPENWEBRTC_VERSION = 91e8aa40121cbd1bc65d093141c7201cc1813fb8
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
