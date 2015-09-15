#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit device configuration
$(call inherit-product, device/ainol/mangov2/full_mangov2.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mangov2
PRODUCT_NAME := cm_mangov2
PRODUCT_BRAND := ainol
PRODUCT_MODEL := Novo 10 Hero II
PRODUCT_MANUFACTURER := ainol

# Release name
PRODUCT_RELEASE_NAME := Novo 10 Hero II

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="ainol/full_hero2v2/hero2v2:4.2.2/JDQ39/eng.root.20140325.120202:userdebug/release-keys" \
    PRIVATE_BUILD_DESC="full_hero2v2-userdebug 4.2.2 JDQ39 eng.root.20140325.120202 release-keys"