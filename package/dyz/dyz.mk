################################################################################
#
# dyz
#
################################################################################

DYZ_VERSION = 4f196778c82ed72095e72c9d401cd2ff8ba36c60
DYZ_SITE = $(call github,Igalia,dyz,$(DYZ_VERSION))
DYZ_LICENSE = BSD-2-Clause
DYZ_INSTALL_STAGING = YES
DYZ_DEPENDENCIES = luajit-beta wpebackend-fdo wpewebkit

$(eval $(autotools-package))
