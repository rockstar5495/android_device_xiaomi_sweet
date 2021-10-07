#
# Copyright (C) 2020 The ColtOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
    ro.bluetooth.a2dp_offload.supported=false \
    persist.bluetooth.a2dp_offload.disabled=true \
    persist.bluetooth.bluetooth_audio_hal.disabled=true \
    vendor.audio.feature.a2dp_offload.enable=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=false \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    ro.bluetooth.library_name=libbluetooth.so

# Enable blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
  persist.dbg.volte_avail_ovr=1 \
  persist.dbg.vt_avail_ovr=1 \
  persist.dbg.wfc_avail_ovr=1 \
  persist.vendor.radio.enable_temp_dds=true \
  persist.vendor.radio.report_codec=1 \
  persist.vendor.ims.disableADBLogs=1 \
  persist.vendor.ims.disableDebugLogs=1 \
  persist.vendor.ims.disableIMSLogs=1 \
  persist.vendor.ims.disableQXDMLogs=1
