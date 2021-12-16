# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bq/bulma/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := bq Aquaris E6
PRODUCT_DEVICE := bulma
PRODUCT_NAME := cm_bulma
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris E6
PRODUCT_MANUFACTURER := bq
PRODUCT_GMS_CLIENTID_BASE := android-bq

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=bulma \
   PRODUCT_NAME=bulma

# Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=bq/Aquaris_E6/Aquaris_E6:5.1/LMY47I/5521fbd:user/release-keys \
    PRIVATE_BUILD_DESC="Aquaris_E6-user 5.1 LMY47I 5521fbd release-keys"
