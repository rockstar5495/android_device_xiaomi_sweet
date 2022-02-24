#
# Copyright (C) 2020 The OctaviOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common stuff from Octavi
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

OCTAVI_BUILD_TYPE := Official
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_SCREEN_DENSITY := 440
TARGET_HAS_NOTCH := true
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := octavi_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
