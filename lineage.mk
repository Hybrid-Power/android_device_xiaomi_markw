#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from markw device
$(call inherit-product, device/xiaomi/markw/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
TARGET_VENDOR := Xiaomi
PRODUCT_DEVICE := markw
PRODUCT_NAME := lineage_markw
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4 Prime
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/markw/markw:6.0.1/MMB29M/V8.2.4.0.MBEMIDL:user/release-keys \
    PRIVATE_BUILD_DESC="markw-user 6.0.1 MMB29M V8.2.4.0.MBEMIDL release-keys"

# PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := xiaomi
