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

# Properties - 
# PRODUCT_PROPERTY_OVERRIDES will be added to /system/build.prop
# ADDITIONAL_DEFAULT_PROPERTIES will be added to /default.pop


# Audio Configuration
#PRODUCT_PROPERTY_OVERRIDES += \
#	persist.audio.handset.mic=dmic \
#	persist.audio.fluence.mode=endfire \
#	persist.audio.lowlatency.rec=false \
#	af.resampler.quality=4

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Dalvik Heap Sizes
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=48m \
    dalvik.vm.heapsize=192m \
    dalvik.vm.heapmaxfree=2m

# Dalvik vm
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:fast \
    ro.kernel.android.checkjni=false \
    dalvik.vm.checkjni=false \

# wifi settings
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=150
    
# Tablet Mode
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# LowRam Settings for 512MB
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.low_ram=true \
	
	
# OpenGLES 2.0 Magic Number
# Broadcom libEGL doesn't play well with zygote's gl_preload
# so disable it for now
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.zygote.disable_gl_preload=true \
	debug.sf.no_hw_vsync=1 \

PRODUCT_PROPERTY_OVERRIDES += \
	hwui.render_dirty_regions=true
	
	
#ifeq ($(TARGET_BUILD_TYPE),debug)
# relax the security only if the target type is debug. 
# Note this is set as release if lunch is used for target selection
# TUse buildspec.mk to override the TARGET_BUILD_TYPE setting
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    service.adb.root=1 \
    service.adb.tcp.port=5555 \
    persist.sys.root_access=3

# The RaspberryPI kernel doesn't support Android's netfilter yet
# So we will turn off netd's Bandwidth control for now 
ADDITIONAL_DEFAULT_PROPERTIES += \
	persist.bandwidth.enable=0 \
	drm.service.enabled=false \
	ro.carrier=wifi-only \
	ro.radio.noril=true


