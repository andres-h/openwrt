# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2019 OpenWrt.org

I2C_BCM2835_MODULES:=\
  CONFIG_I2C_BCM2835:drivers/i2c/busses/i2c-bcm2835

define KernelPackage/i2c-bcm2835
  $(call i2c_defaults,$(I2C_BCM2835_MODULES),59)
  TITLE:=Broadcom BCM2835 I2C master controller driver
  DEPENDS:=@TARGET_bcm27xx +kmod-i2c-core
endef

define KernelPackage/i2c-bcm2835/description
  This package contains the Broadcom 2835 I2C master controller driver
endef

$(eval $(call KernelPackage,i2c-bcm2835))


define KernelPackage/gpio-relayboard
  SUBMENU:=$(OTHER_MENU)
  DEPENDS:=@GPIO_SUPPORT @TARGET_bcm27xx +kmod-i2c-core
  TITLE:=Relayboard GPIO support
  KCONFIG:=CONFIG_GPIO_RELAYBOARD
  FILES:=$(LINUX_DIR)/drivers/gpio/gpio-relayboard.ko
  AUTOLOAD:=$(call AutoProbe,gpio-relayboard)
endef

define KernelPackage/gpio-relayboard/description
 Kernel module for Relayboard GPIO
endef

$(eval $(call KernelPackage,gpio-relayboard))
