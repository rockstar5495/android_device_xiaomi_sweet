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

# Display
PRODUCT_PROPERTY_OVERRIDES += \
debug.sf.frame_rate_multiple_threshold=120

# Enable blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
  persist.dbg.volte_avail_ovr=1 \
  persist.dbg.vt_avail_ovr=1 \
  persist.dbg.wfc_avail_ovr=1 \
  persist.sys.fflag.override.settings_provider_model=false \
  persist.vendor.radio.enable_temp_dds=true \
  persist.vendor.radio.report_codec=1 \
  persist.vendor.ims.disableADBLogs=1 \
  persist.vendor.ims.disableDebugLogs=1 \
  persist.vendor.ims.disableIMSLogs=1 \
  persist.vendor.ims.disableQXDMLogs=1

# ZRAM writeback
PRODUCT_PROPERTY_OVERRIDES += \
ro.zram.mark_idle_delay_mins=60 \
ro.zram.first_wb_delay_mins=1440 \
ro.zram.periodic_wb_delay_hours=24

# Pre-rendering
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.perf.scroll_opt=true

