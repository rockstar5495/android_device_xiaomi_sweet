# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap,com.android.camera2 \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml

#DPI
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=440

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.renderer=skiavk \
	debug.sf.disable_backpressure=1 \
	debug.sf.enable_hwc_vds=1 \
	ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
	vendor.display.disable_metadata_dynamic_fps=1 \
        debug.sf.enable_gl_backpressure=1 \
	debug.cpurend.vsync=false \
	vendor.display.disable_rotator_downscale=1

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.low_ram=false \
    ro.lmk.log_stats=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.media_vol_default=10 \
	ro.config.media_vol_steps=25 \
	ro.config.vc_call_vol_default=7 \
	ro.config.vc_call_vol_steps=20

# Priv-app permission
PRODUCT_PRODUCT_PROPERTIES += \
	ro.control_privapp_permissions=log

# Gboard
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.ime.kb_pad_port_b=1

# Phase Gffset
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.use_phase_offsets_as_durations=1 \
    debug.sf.late.sf.duration=10500000 \
    debug.sf.late.app.duration=16600000 \
    debug.sf.early.sf.duration=16600000 \
    debug.sf.early.app.duration=16600000 \
    debug.sf.earlyGl.sf.duration=16600000 \
    debug.sf.earlyGl.app.duration=16600000

# One Handed Mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

# App
PRODUCT_PROPERTY_OVERRIDES += \
        persist.device_config.runtime_native_boot.iorap_perfetto_enable=true \
	ro.launcher.blur.appLaunch=0

# Perfetto
PRODUCT_PROPERTY_OVERRIDES += \
	persist.device_config.runtime_native_boot.iorap_readahead_enable=true

# ADB on boot
persist.service.adb.enable=1
persist.service.debuggable=1
persist.sys.usb.config=mtp,adb
