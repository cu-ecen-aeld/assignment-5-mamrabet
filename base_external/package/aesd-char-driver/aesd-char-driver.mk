##############################################################
#
# AESD-CHAR-DRIVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHAR_DRIVER_VERSION = 8a300894bd4ca9282513ad42aa2b5e8ef4c4b136
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-mamrabet.git'
AESD_CHAR_DRIVER_SITE_METHOD = git

AESD_CHAR_DRIVER_SUBDIR = aesd-char-driver

AESD_CHAR_DRIVER_MODULE_SUBDIRS = $(AESD_CHAR_DRIVER_SUBDIR)
# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below


define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/$(AESD_CHAR_DRIVER_SUBDIR)/aesdchar.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra/aesdchar.ko
	$(INSTALL) -m 0755 $(@D)/$(AESD_CHAR_DRIVER_SUBDIR)/aesdchar.ko $(TARGET_DIR)/usr/bin/aesdchar.ko
	$(INSTALL) -m 0755 $(@D)/$(AESD_CHAR_DRIVER_SUBDIR)/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/$(AESD_CHAR_DRIVER_SUBDIR)/aesdchar_unload $(TARGET_DIR)/usr/bin/
endef
$(eval $(kernel-module))
$(eval $(generic-package))
