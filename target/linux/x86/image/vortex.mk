define Device/generic
  DEVICE_VENDOR := Generic
  DEVICE_MODEL := x86/vortex
  DEVICE_PACKAGES += kmod-r6040
  GRUB2_VARIANT := legacy
endef
TARGET_DEVICES += generic
