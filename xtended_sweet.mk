#
# Copyright (C) 2020 The Xtended Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Xtended Stuff
XTENDED_BUILD_TYPE := OFFICIAL
XTENDED_BUILD_MAINTAINER := Pratyaksh.Bharadwaj
XTENDED_BUILD_DONATE_URL := https://paypal.me/pratyakshb5495
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
TARGET_SCREEN_DENSITY := 440

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xtended_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
