#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/ainol/mangov2

# Include common makefile
$(call inherit-product, device/ainol/gs702a-common/common.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.extra_modules.rc:root/init.extra_modules.rc \
    $(LOCAL_PATH)/rootdir/init.modules.rc:root/init.modules.rc

# Wi-Fi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    init.wifi.rc \
    lib_driver_cmd_rtl \
    hostapd \
    hostapd_cli \
    wpa_cli \
    libwpa_client \
    wpa_supplicant

$(call inherit-product-if-exists, vendor/ainol/mangov2/mangov2-vendor.mk)
