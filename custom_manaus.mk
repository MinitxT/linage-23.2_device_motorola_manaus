#
# SPDX-FileCopyrightText: cloverOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/manaus/device.mk)

# Inherit some common cloverOS stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := custom_manaus
PRODUCT_DEVICE := manaus
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 neo

#clover build flags
COVER_MAINTAINER := MinitxT
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
WITH_GMS := true

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=manaus \
    BuildDesc="manaus_g_sys-user 15 V1TMS35H.3-45-3-2-7 0688a3-c2841 release-keys" \
    BuildFingerprint=motorola/manaus_g_sys/manaus:15/V1TMS35H.3-45-3-2-7/0688a3-c2841:user/release-keys
