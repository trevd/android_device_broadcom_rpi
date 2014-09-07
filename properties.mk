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
    dalvik.vm.heapsize=32m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=2m

# Dalvik execution-mode vm
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:fast \
    dalvik.vm.jit.codecachesize=0
   
# wifi settings
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=0
    
# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false \
    ro.kernel.android.checkjni=0 \
    
    
# Tablet Mode
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# LowRam Settings for 512MB
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.disable_zram=1 \
	ro.config.low_ram=true \
	
	
# Graphics Properties OpenGLES 2.0 Magic Number
# Broadcom libEGL doesn't play well with zygote's gl_preload
# so disable it for now
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.zygote.disable_gl_preload=true \
    debug.hwui.render_dirty_regions=false \
    debug.sf.no_hw_vsync=1 \
    persist.sys.prefer_16bpp=1 \
    ro.hwui.layer_cache_size=0 \
    ro.opengles.surface.rgba8888=true \
    ro.systemui.use_gl_wallpaper=0 \

	
	
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

# Webkit (classic webview provider)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic
