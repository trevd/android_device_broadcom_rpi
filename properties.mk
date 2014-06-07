#
# Copyright 2013 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

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
    dalvik.vm.heapsize=256m

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
	
	
# OpenGLES 3.0 Magic Number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.bq.gpu_to_cpu_unsupported=1 \

PRODUCT_PROPERTY_OVERRIDES += \
	hwui.render_dirty_regions=false

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
#endif
