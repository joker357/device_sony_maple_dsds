$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/sony/maple_dsds/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### HAVOC
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
WITH_GAPPS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := nad_maple_dsds
PRODUCT_DEVICE := maple_dsds
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8142
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=maple_dsds \
    PRIVATE_BUILD_DESC="G8142-user 9 47.2.A.10.107 172320177 release-keys"

BUILD_FINGERPRINT := Sony/G8142/G8142:9/47.2.A.10.107/172320177:user/release-keys
