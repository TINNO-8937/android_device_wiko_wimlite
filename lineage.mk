#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from tenshi device
$(call inherit-product, device/wiko/wimlite/device.mk)

# Inherit from common device
$(call inherit-product, device/tinno/msm8937-common/msm8937.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := wiko
PRODUCT_DEVICE := wimlite
PRODUCT_NAME := lineage_wimlite
PRODUCT_BRAND := wiko
PRODUCT_MODEL := WIKO Wim Lite
PRODUCT_MANUFACTURER := wiko

PRODUCT_GMS_CLIENTID_BASE := android-wiko

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=WIKO/p6901/p6901:7.1.1/NMF26F/androi04211336:user/release-keys \
    PRIVATE_BUILD_DESC="p6901-user 7.1.1 NMF26F eng.android.1515680200 release-keys"
