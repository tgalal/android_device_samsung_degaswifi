## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := degaswifi

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/degaswifi/device_degaswifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := degaswifi
PRODUCT_NAME := cm_degaswifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := degaswifi
PRODUCT_MANUFACTURER := samsung
