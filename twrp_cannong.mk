# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0

PRODUCT_DEVICE := cannong
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := redmi
PRODUCT_MODEL := Redmi Note 9T
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_RELEASE_NAME := $(PRODUCT_DEVICE)


# Inherit from the Device Tree itself.
$(call inherit-product, device/xiaomi/cannong/device.mk)

# Inherit from Prebuilt Products.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from TWRP-common Stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit from PBRP-common Stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from OMNI-common Stuff, if building from below Android 10.
$(call inherit-product-if-exists, vendor/omni/config/common.mk)

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFCATURER)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cannong-user 12 SP1A.210812.016 V13.0.2.0.SJEMIXM release-keys"

BUILD_FINGERPRINT := redmi/cannong_global/cannong:12/SP1A.210812.016/V13.0.2.0.SJEMIXM:user/release-keys
