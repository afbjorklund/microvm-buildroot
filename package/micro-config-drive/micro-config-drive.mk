################################################################################
#
# micro-config-drive
#
################################################################################

MICRO_CONFIG_DRIVE_VERSION = 48
MICRO_CONFIG_DRIVE_SITE = $(call github,clearlinux,micro-config-drive,v$(MICRO_CONFIG_DRIVE_VERSION))
MICRO_CONFIG_DRIVE_LICENSE = GPLv3+
MICRO_CONFIG_DRIVE_LICENSE_FILES = LICENSE

MICRO_CONFIG_DRIVE_AUTORECONF = YES

define MICRO_CONFIG_DRIVE_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 755 package/micro-config-drive/S40ucd \
		$(TARGET_DIR)/etc/init.d/S40ucd
endef

$(eval $(autotools-package))
