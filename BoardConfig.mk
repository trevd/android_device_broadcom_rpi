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

TARGET_BOARD_PLATFORM := bcm2708

TARGET_KERNEL_CONFIG := rpi_android_defconfig
TARGET_KERNEL_SOURCE := kernel/broadcom/rpi

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# 512MB System Partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912

BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912

BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_HAVE_BLUETOOTH := false
BOARD_HAVE_BLUETOOTH_BCM := false


USE_OPENGL_RENDERER := true


ifeq ($(strip $(TARGET_BUILD_VARIANT)),eng)
	
	#BOARD_LCD_PARTIAL_UPDATES_ENABLED := true
	#BOARD_NO_PAGE_FLIPPING := true
	#COMMON_GLOBAL_CFLAGS += -DBCM_HARDWARE
	#COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888
	#TARGET_PROVIDES_INIT_RC := true
	
	# Surfaceflinger flags
	COMMON_GLOBAL_CFLAGS += -DEGL_NEEDS_FNW
	NUM_FRAMEBUFFER_SURFACE_BUFFERS := 1
	COMMON_GLOBAL_CFLAGS += -DHAS_CONTEXT_PRIORITY
	TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
	TARGET_DISABLE_TRIPLE_BUFFERING := true
	TARGET_DOESNT_USE_FENCE_SYNC := true
	
endif


ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_GENERIC_INVENSENSE := false


# Enable dalvik startup with a low memory footprint
TARGET_ARCH_LOWMEM := true


# Bootloader partition config settings variables

BOARD_KERNEL_CMDLINE := sdhci-bcm2708.sync_after_dma=0 dwc_otg.lpm_enable=0 console=tty1 rootwait androidboot.carrier=wifi-only

BOARD_GPU_MEMSIZE := 256
TARGET_SCREEN_WIDTH := 1920
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_DEPTH := 32

TARGET_RECOVERY_FSTAB := device/broadcom/rpi/fstab.bcm2708


