#
# Copyright (C) 2014 Trevor Drake <trevd1234@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

ifeq ($(TARGET_PROVIDES_INIT_RC),true)
	PRODUCT_COPY_FILES += \
		device/broadcom/rpi/init.debug.rc:root/init.rc
endif 

PRODUCT_COPY_FILES += \
	device/broadcom/rpi/config.txt:bootloader/config.txt

PRODUCT_COPY_FILES += \
	device/broadcom/rpi/init.bcm2708.rc:root/init.bcm2708.rc \
	device/broadcom/rpi/init.recovery.bcm2708.rc:root/init.recovery.bcm2708.rc \
	device/broadcom/rpi/fstab.bcm2708:root/fstab.bcm2708 \
	device/broadcom/rpi/ueventd.bcm2708.rc:root/ueventd.bcm2708.rc
    
    
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \


PRODUCT_COPY_FILES += \
	device/broadcom/rpi/audio_policy.conf:system/etc/audio_policy.conf \
	device/broadcom/rpi/mixer_paths.xml:system/etc/mixer_paths.xml

    
PRODUCT_COPY_FILES += \
	device/broadcom/rpi/media_codecs.xml:system/etc/media_codecs.xml \
	device/broadcom/rpi/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += libwebcore \
	Launcher2


$(call inherit-product-if-exists, vendor/broadcom/rpi/device-vendor.mk)


$(call inherit-product-if-exists, hardware/broadcom/bcm2708/bcm2708.mk)

DEVICE_PACKAGE_OVERLAYS := \
    device/broadcom/rpi/overlay

