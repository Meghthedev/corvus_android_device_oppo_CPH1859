#
# Copyright (C) 2021-2022 The corvusOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from CPH1859 device
$(call inherit-product, device/oppo/CPH1859/device.mk)

# Inherit some common corvusOS stuff.
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

CORVUS_MAINTAINER := Meghthedev
RAVEN_LAIR := Official
USE_GAPPS=true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := corvus_CPH1859
PRODUCT_DEVICE := CPH1859
PRODUCT_BRAND := oppo
PRODUCT_MODEL := realme 1
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_oppo6771_17065-user 9 PPR1.180610.011 eng.root.20200509.060522 release-keys"

BUILD_FINGERPRINT := OPPO/CPH1859/CPH1859:9/PPR1.180610.011/1587903909:user/release-keys

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true
# Pixel charging animation
TARGET_INCLUDE_PIXEL_CHARGER := true
# PixelExperience Stuffs
TARGET_GAPPS_ARCH := arm64
