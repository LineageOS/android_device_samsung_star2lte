# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/star2lte/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := star2lte
PRODUCT_NAME := lineage_star2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G965F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := samsung/star2ltexx/star2lte:10/QP1A.190711.020/G965FXXU8DTC5:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=star2ltexx \
        PRIVATE_BUILD_DESC="star2ltexx-user 10 QP1A.190711.020 G965FXXU8DTC5 release-keys"
