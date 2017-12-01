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

$(call inherit-product, device/huawei/alice/full_alice.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model
PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_NAME := lineage_alice

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Huawei/ALE-L21/hwALE-H:6.0/HuaweiALE-L21/C432B596:user/release-keys" \
    PRIVATE_BUILD_DESC="ALE-L21-user 6.0 HuaweiALE-L21 C432B596 release-keys"
