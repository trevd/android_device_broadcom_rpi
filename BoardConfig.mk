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

# Use the non-open-source parts, if they're present
-include vendor/rpi/rpi/BoardConfigVendor.mk
TARGET_GLOBAL_CFLAGS += -DBCM_HARDWARE
# Boot Animation
TARGET_BOOTANIMATION_PRELOAD			:= true
TARGET_BOOTANIMATION_TEXTURE_CACHE		:= true

# Platform
TARGET_BOARD_PLATFORM				:= bcm2708
TARGET_ARCH					:= arm
TARGET_ARCH_VARIANT				:= armv6-vfp
TARGET_CPU_ABI					:= armeabi
TARGET_CPU_ABI2					:= armeabi-v6k
TARGET_CPU_VARIANT				:= arm11
TARGET_ARCH_VARIANT_FPU				:= vfp
TARGET_ARCH_VARIANT_CPU				:= arm1176jzf-s
TARGET_ARCH_THUMB_VERSION		:= 1
#TARGET_BOARD_PLATFORM_GPU			:= videocoreIV
TARGET_KERNEL_CONFIG := rpi_android_defconfig

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 268435456

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912

BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_HAVE_BLUETOOTH := false
USE_CAMERA_STUB := true

#EGL
BOARD_EGL_CFG := device/rpi/rpi/egl.cfg
USE_OPENGL_RENDERER := true


ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_GENERIC_INVENSENSE := false
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Bootanimation
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := true

# Disable texture-cache in boot-animation to fix OOM with new animation
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
#COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH

# Enable dalvik startup with a low memory footprint
TARGET_ARCH_LOWMEM := true

# Needed for blobs


BOARD_HAVE_OLD_ION_API := true

