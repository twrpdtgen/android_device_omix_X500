#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X500 device
$(call inherit-product, device/omix/X500/device.mk)

PRODUCT_DEVICE := X500
PRODUCT_NAME := omni_X500
PRODUCT_BRAND := OMIX
PRODUCT_MODEL := OMIX X500
PRODUCT_MANUFACTURER := omix

PRODUCT_GMS_CLIENTID_BASE := android-coosea

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k69v1_64-user 11 RP1A.200720.011 1640161050 release-keys"

BUILD_FINGERPRINT := OMIX/X500/X500:11/RP1A.200720.011/1640161050:user/release-keys
