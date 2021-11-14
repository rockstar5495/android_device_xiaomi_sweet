#
# Copyright (C) 2021 The ColtOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/sweet/sweet-vendor.mk)

# The first api level, device has been commercially launched on.
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_TARGET_VNDK_VERSION := 30

PRODUCT_EXTRA_VNDK_VERSIONS := 30

# A/B
AB_OTA_UPDATER := false

# Audio

TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/audio/audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    BluetoothQti

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.common@1.0 \
    android.hardware.camera.device@3.3:64 \
    android.hardware.camera.device@3.4:64 \
    android.hardware.camera.device@3.5:64 \
    android.hardware.camera.provider@2.4 \
    android.hardware.camera.provider@2.4-impl:32 \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.provider@2.5:64 \
    android.hardware.camera.provider@2.6:64 \
    vendor.qti.hardware.camera.device@1.0 \
    camera.msm8953 \
    libcamshim \
    libmm-qcamera \
    libui_shim \
    libmm-qcamera

PRODUCT_COPY_FILES += \
   frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/a2dp_audio_policy_configuration.xml \
   frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/bluetooth_audio_policy_configuration.xml

TARGET_DISABLE_MIMOJI_FILES := true

# Device Settings
PRODUCT_PACKAGES += \
    XiaomiParts

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/parts/privapp-permissions-parts.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-parts.xml

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/qdcm_calib_data_xiaomi_k6_38_0c_0a_fhd_dsc_video_dsi_panel.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/qdcm_calib_data_xiaomi_k6_38_0c_0a_fhd_dsc_video_dsi_panel.xml

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni \
    fm-commonsys

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Init
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.target.rc

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/sm6150-idp-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/sm6150-idp-snd-card_Button_Jack.kl

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.gsma.services.nfc \
    NfcNci \
    SecureElement \
    Tag

# Cutout
PRODUCT_PACKAGES += \
    CutoutRingServiceSweet

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# rro_overlays
PRODUCT_PACKAGES += \
    WifiOverlay \
    SweetinproSettingsProvider \
    SweetinproWifiOverlay

# Overlays -- Override vendor ones
PRODUCT_PACKAGES += \
    FrameworksResTarget \
    DevicesOverlay \
    DevicesAndroidOverlay

# Display
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/display/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Perf
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@2.0

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Platform
PRODUCT_BOARD_PLATFORM := sm6150
PRODUCT_USES_QCOM_HARDWARE := true

# Properties
-include $(LOCAL_PATH)/product_prop.mk
-include $(LOCAL_PATH)/system_prop.mk
-include $(LOCAL_PATH)/vendor_prop.mk
-include $(LOCAL_PATH)/system.prop
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/qcom-caf/sm8150

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/wifi/WCNSS_qcom_cfg.ini

# WiFi Display
PRODUCT_PACKAGES += \
    libdisplayconfig.qti \
    libnl \
    libqdMetaData \
    libavservices_minijail \
    libavservices_minijail_32 \
    vendor.display.config@2.0

# GCam Go
PRODUCT_PACKAGES += \
    GCam

# Remove Packages
PRODUCT_PACKAGES += \
    RemovePackages
