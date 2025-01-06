#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common YAAP stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Inherit from nx721j device
$(call inherit-product, device/nubia/nx721j/device.mk)

PRODUCT_DEVICE := nx721j
PRODUCT_NAME := yaap_nx721j
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX721J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CN_NX721j-user 14 UKQ1.230917.001 20240127.100009 release-keys"

BUILD_FINGERPRINT := nubia/CN_NX721J/NX721J:14/UKQ1.230917.001/20240127.100009:user/release-keys