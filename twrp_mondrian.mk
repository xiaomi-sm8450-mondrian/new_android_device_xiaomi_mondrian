#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

PRODUCT_DEVICE := mondrian
PRODUCT_NAME := twrp_mondrian
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23013PC75G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_mondrian-eng 15 SP2A.220405.004 eng.sekaia.20241213.224453 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_mondrian/mondrian:15/SP2A.220405.004/sekaiacg12132244:eng/test-keys
