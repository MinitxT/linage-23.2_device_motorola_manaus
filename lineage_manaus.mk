#
# SPDX-FileCopyrightText: LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/manaus/device.mk)

# Inherit some common lineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

TARGET_DISABLE_EPPE := true
TARGET_INCLUDE_AXFX := false

AXION_CAMERA_REAR_INFO := 50,13
AXION_CAMERA_FRONT_INFO := 32

# Maintainer name
AXION_MAINTAINER := MiniT|ミニット

# Processor name 
AXION_PROCESSOR := Mediatek_Dimensity_7030

TARGET_IS_LOW_RAM := false

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil

# High Brightness Mode (HBM)
HBM_SUPPORTED := true
HBM_NODE := /sys/class/leds/panel0-hbm/brightness

# doze flags
# for devices with doze/sensor related issues 
TARGET_NEEDS_DOZE_FIX := true
# doze gestures
TARGET_DOZE_TAP_PULSE_SUPPORTED ?= true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED ?= true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED ?= true
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED ?= true

# Enable or disable ScrollOptimizer globally
persist.sys.perf.scroll_opt = true

# Heavy app handling mode
# 0 - Disable heavy app classification
# 1 - Enable dynamic detection (based on frame duration and buffer load)
# 2 - Treat all apps as heavy for performance
persist.sys.perf.scroll_opt.heavy_app = 2

PRODUCT_NAME := lineage_manaus
PRODUCT_DEVICE := manaus
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 neo

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=manaus \
    BuildDesc="manaus_g_sys-user 15 V1TMS35H.3-45-3-2-7 0688a3-c2841 release-keys" \
    BuildFingerprint=motorola/manaus_g_sys/manaus:15/V1TMS35H.3-45-3-2-7/0688a3-c2841:user/release-keys
