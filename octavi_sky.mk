#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)
#$(call inherit-product-if-exists, packages/apps/XiaomiParts/config.mk)
# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit ih8sn Makefile
#$(call inherit-product, vendor/extra/ih8sn/product.mk)

OCTAVI_BUILD_TYPE := Official
OCTAVI_MAINTAINER := Tushar Bharti
WITH_GAPPS := true

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := octavi_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi