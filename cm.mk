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

# Inherit device configuration
$(call inherit-product, device/broadcom/rpi/full_rpi.mk)

# Inherit some common CM stuff.
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 600
$(call inherit-product-if-exists, vendor/cm/config/common_full_tablet_wifionly.mk)

# Overrides
PRODUCT_NAME := cm_rpi

PRODUCT_CHARACTERISTICS := tablet,nosdcard

$(call inherit-product, device/broadcom/rpi/properties.mk)
