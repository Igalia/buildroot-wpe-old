################################################################################
#
# graphene
#
################################################################################

GRAPHENE_VERSION = 93d30c4e409d0cf207ba601362a01336b0c7b413
GRAPHENE_SITE = $(call github,ebassi,graphene,$(GRAPHENE_VERSION))
GRAPHENE_LICENSE = MIT/X11
GRAPHENE_LICENSE_FILES = LICENSE
GRAPHENE_INSTALL_STAGING = YES
GRAPHENE_DEPENDENCIES = host-pkgconf libglib2
GRAPHENE_AUTORECONF = YES

define GRAPHENE_RUN_AUTOGEN
	cd $(@D) && PATH=$(BR_PATH) NOCONFIGURE=1 ./autogen.sh
endef
GRAPHENE_PRE_CONFIGURE_HOOKS += GRAPHENE_RUN_AUTOGEN

$(eval $(autotools-package))
