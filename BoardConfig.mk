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
-include vendor/broadcom/rpi/BoardConfigVendor.mk

# Platform

TARGET_ARCH	:= arm
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2	:= armeabi-v6k
TARGET_CPU_VARIANT := arm11

TARGET_ARCH_VARIANT_FPU := vfp
TARGET_ARCH_VARIANT_CPU	:= arm1176jzf-s
# The arm1176jzf-s only supports Thumb-1.
TARGET_ARCH_THUMB_VERSION := 1
TARGET_BOARD_PLATFORM := bcm2708

TARGET_KERNEL_CONFIG := rpi_android_defconfig
TARGET_KERNEL_SOURCE := kernel/broadcom/rpi

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# 256MB Recovery Partition
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 268435456

# 512MB System Partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912

BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912

BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_HAVE_BLUETOOTH := false



USE_OPENGL_RENDERER := true


ifeq ($(strip $(TARGET_BUILD_VARIANT)),eng)
	
	#BOARD_LCD_PARTIAL_UPDATES_ENABLED := true
	
	#BOARD_NO_PAGE_FLIPPING := true
	
	#COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888
	#COMMON_GLOBAL_CFLAGS += -DEGL_NEEDS_FNW
	COMMON_GLOBAL_CFLAGS += -DBCM_HARDWARE
	
	TARGET_PROVIDES_INIT_RC := true
	
endif


ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_GENERIC_INVENSENSE := false
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false

# Enable dalvik startup with a low memory footprint
TARGET_ARCH_LOWMEM := true

