# 
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from nitrogen device
$(call inherit-product, device/xiaomi/nitrogen/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_nitrogen
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := nitrogen
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Max 3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="nitrogen" \
    PRODUCT_NAME="nitrogen" \
    PRIVATE_BUILD_DESC="nitrogen-user 9 PKQ1.181007.001 9.1.3 release-keys"

BUILD_FINGERPRINT := "Xiaomi/nitrogen/nitrogen:9/PKQ1.181007.001/9.1.3:user/release-keys"

TARGET_VENDOR := Xiaomi
