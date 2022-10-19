#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp/pb/omni stuff.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)
$(call inherit-product-if-exists, vendor/pbrp/config/common.mk)
$(call inherit-product-if-exists, vendor/omni/config/common.mk)

# Inherit from cannong device
$(call inherit-product, device/xiaomi/cannong/device.mk)

PRODUCT_DEVICE := cannong
PRODUCT_NAME := twrp_cannong
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9T
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cannong-user 12 SP1A.210812.016 V13.0.2.0.SJEMIXM release-keys"

BUILD_FINGERPRINT := Redmi/cannong_global/cannong:12/SP1A.210812.016/V13.0.2.0.SJEMIXM:user/release-keys
