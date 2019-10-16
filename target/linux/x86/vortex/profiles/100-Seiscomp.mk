#
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/Seiscomp
  NAME:=Seiscomp
  PACKAGES:=kmod-r6040 block-mount f2fsck kmod-gpio-vdx kmod-gpio-lpt kmod-ipt-conntrack-extra kmod-ipt-ipopt kmod-ipt-ipset kmod-ipt-raw kmod-mii kmod-nfnetlink kmod-nls-base kmod-usb-core kmod-usb-net kmod-usb-net-qmi-wwan kmod-usb-serial kmod-usb-serial-option kmod-usb-serial-wwan kmod-usb-wdm openvpn-openssl smartmontools smstools3 luci luci-theme-bootstrap luci-proto-ipv6 luci-proto-ppp luci-proto-3g luci-proto-qmi luci-app-opkg luci-app-openvpn luci-app-mwan3 seiscomp seiscomp-cube luci-app-seiscomp
endef

define Profile/Seiscomp/Description
	Seiscomp Profile
endef
$(eval $(call Profile,Seiscomp))
