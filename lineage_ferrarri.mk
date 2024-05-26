#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ferrarri device
$(call inherit-product, device/realme/ferrarri/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Everest
EVEREST_BUILD_TYPE := OFFICIAL
EVEREST_MAINTAINER := Arman-ATI

# Oplus Camera
TARGET_USES_OPLUS_CAMERA := true

# Launchers
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Blur
TARGET_ENABLE_BLUR := true

# UDFPS
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Gapps
WITH_GAPPS := true

# Extra stuff
TARGET_USES_BLUR_RECENT := false
TARGET_PREBUILT_BCR := true

# ADB root
ALLOW_ADBD_ROOT := true
ALLOW_LOCAL_PROP_OVERRIDE := true

PRODUCT_NAME := lineage_ferrarri
PRODUCT_DEVICE := ferrarri
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3301

PRODUCT_SYSTEM_NAME := RED8ACL1
PRODUCT_SYSTEM_DEVICE := RED8ACL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3301-user 14 UP1A.230620.001 S.14b9d95_34b46-2684b release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3301/RED8ACL1:14/UP1A.230620.001/S.14b9d95_34b46-2684b:user/release-keys
