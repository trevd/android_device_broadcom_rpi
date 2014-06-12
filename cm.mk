# Inherit device configuration
$(call inherit-product, device/broadcom/rpi/full_rpi.mk)

# Inherit some common CM stuff.
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920
$(call inherit-product-if-exists, vendor/cm/config/common_full_tablet_wifionly.mk)

# Overrides
PRODUCT_NAME := cm_rpi

PRODUCT_CHARACTERISTICS := tablet

