#
# Copyright (C) 2021 The ColtOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common stuff from ColtOS
$(call inherit-product, vendor/colt/config/common_full_phone.mk)

COLT_BUILD_TYPE := Official
COLT_BUILD_MAINTAINER = Pratyaksh.Bharadwaj
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_SCREEN_DENSITY := 440
TARGET_HAS_NOTCH := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := colt_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
