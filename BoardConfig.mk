#
# Copyright (C) 2012 The CyanogenMod Project
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

-include device/ainol/gs702a-common/BoardCommonConfig.mk

LOCAL_PATH := device/ainol/mangov2

# Assert
TARGET_OTA_ASSERT_DEVICE := mangov2

# Bluetooth
BOARD_HAVE_BLUETOOTH := false

# TWRP
DEVICE_RESOLUTION := 1280x800

# Wifi
BOARD_USES_ACTIONS_WLAN := true
ADDITIONAL_DEFAULT_PROPERTIES    += wifi.supplicant_scan_interval=120
ADDITIONAL_DEFAULT_PROPERTIES    += wifi.interface=wlan0
BOARD_WIFI_VENDOR                := realtek
BOARD_WLAN_DEVICE                := rtl8188eu
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
CONFIG_DRIVER_WEXT 		 		 := y
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER        	 := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   	 := lib_driver_cmd_rtl
# Defines
WIFI_DRIVER_FIRMWARE_PATH        := "/misc/modules"
WIFI_DRIVER_MODULE_FOLDER_PATH   := "/system/lib/modules/"
WIFI_DRIVER_MODULE_PATH          := $(WIFI_DRIVER_FIRMWARE_PATH)"/wlan.ko"
WIFI_DRIVER_MODULE_NAME 	     := "wlan"
WIFI_DRIVER_MODULE_ARG    	     := "ifname=wlan0 if2name=p2p0"
WIFI_FIRMWARE_LOADER             := ""
WIFI_DRIVER_FW_PATH_STA          := ""
WIFI_DRIVER_FW_PATH_AP           := ""
WIFI_DRIVER_FW_PATH_P2P          := ""
WIFI_DRIVER_FW_PATH_PARAM        := ""

# Include vendor parts if available
-include vendor/ainol/mangov2/BoardConfigVendor.mk