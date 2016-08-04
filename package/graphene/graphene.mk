################################################################################
#
# graphene
#
################################################################################

GRAPHENE_VERSION = 4e2dc7306b79d6713e95225493a5751045eb62a2
GRAPHENE_SITE = $(call github,ebassi,graphene,$(GRAPHENE_VERSION))
GRAPHENE_LICENSE = MIT/X11
GRAPHENE_LICENSE_FILES = LICENSE
GRAPHENE_INSTALL_STAGING = YES
GRAPHENE_DEPENDENCIES = host-pkgconf libglib2

#GRAPHENE_AUTORECONF = YES

define GRAPHENE_RUN_AUTOGEN
	cd $(@D) && PATH=$(BR_PATH) NOCONFIGURE=1 ./autogen.sh
endef
GRAPHENE_PRE_CONFIGURE_HOOKS += GRAPHENE_RUN_AUTOGEN

$(eval $(autotools-package))
