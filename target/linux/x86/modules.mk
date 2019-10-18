#
# Copyright (C) 2017 Cezary Jackiewicz <cezary@eko.one.pll>
#
# This is free software, licensed under the GNU General Public License v2.
#

define KernelPackage/sound-cs5535audio
  TITLE:=CS5535/CS5536 Audio Controller
  DEPENDS:=@TARGET_x86_geode +kmod-ac97
  KCONFIG:=CONFIG_SND_CS5535AUDIO
  FILES:=$(LINUX_DIR)/sound/pci/cs5535audio/snd-cs5535audio.ko
  AUTOLOAD:=$(call AutoLoad,36,snd-cs5535audio)
  $(call AddDepends/sound)
endef

define KernelPackage/sound-cs5535audio/description
 Support for the integrated AC97 sound device on motherboards
 with AMD CS5535/CS5536 chipsets.
endef

$(eval $(call KernelPackage,sound-cs5535audio))

define KernelPackage/sp5100_tco
  SUBMENU:=$(OTHER_MENU)
  TITLE:=SP5100 Watchdog Support
  DEPENDS:=@TARGET_x86
  KCONFIG:=CONFIG_SP5100_TCO
  FILES:=$(LINUX_DIR)/drivers/watchdog/sp5100_tco.ko
  AUTOLOAD:=$(call AutoLoad,50,sp5100_tco,1)
endef

define KernelPackage/sp5100_tco/description
 Kernel module for the SP5100_TCO hardware watchdog.
endef

$(eval $(call KernelPackage,sp5100_tco))


define KernelPackage/gpio-lpt
  SUBMENU:=$(OTHER_MENU)
  DEPENDS:=@GPIO_SUPPORT
  TITLE:=LPT GPIO support
  KCONFIG:=CONFIG_GPIO_LPT
  FILES:=$(LINUX_DIR)/drivers/gpio/gpio-lpt.ko
  AUTOLOAD:=$(call AutoProbe,gpio-lpt)
endef

define KernelPackage/gpio-vdx/description
 Kernel module for LPT GPIO
endef

$(eval $(call KernelPackage,gpio-lpt))


define KernelPackage/gpio-vdx
  SUBMENU:=$(OTHER_MENU)
  DEPENDS:=@GPIO_SUPPORT
  TITLE:=DMP Vortex86 SX/DX/MX GPIO support
  KCONFIG:=CONFIG_GPIO_VDX
  FILES:=$(LINUX_DIR)/drivers/gpio/gpio-vdx.ko
  AUTOLOAD:=$(call AutoProbe,gpio-vdx)
endef

define KernelPackage/gpio-vdx/description
 Kernel module for DMP Vortex86 SX/DX/MX GPIO
endef

$(eval $(call KernelPackage,gpio-vdx))
