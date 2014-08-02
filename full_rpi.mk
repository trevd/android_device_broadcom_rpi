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
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/broadcom/rpi/device.mk)

PRODUCT_NAME := full_rpi
PRODUCT_DEVICE := rpi
PRODUCT_BRAND := Android
PRODUCT_MODEL := rpi
PRODUCT_MANUFACTURER := rpi
