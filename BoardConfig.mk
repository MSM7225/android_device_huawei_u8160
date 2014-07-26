# Copyright (C) 2009 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH := $(call my-dir)

# Import the msm7x25-common BoardConfigCommon.mk
include device/huawei/msm7x25-common/BoardConfigCommon.mk

# Target Chipset/Platform
TARGET_BOARD_VARIANT := msm7x25

# Target Properties
TARGET_BOOTLOADER_BOARD_NAME := u8160
TARGET_OTA_ASSERT_DEVICE := u8160,hwu8160,u8180,hwu8180

# Bluetooth
BOARD_HAVE_HUAWEI_BLUETOOTH := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8160

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_BAND := 802_11_ABG
BOARD_WLAN_DEVICE := bcm4329
BOARD_WLAN_DEVICE_REV := bcm4329

WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_AP := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/wifi/firmware.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/wifi/firmware.bin nvram_path=/data/misc/wifi/nvram.txt iface_name=wlan"

# Kernel
TARGET_KERNEL_SOURCE := kernel/huawei/msm7x25-common
TARGET_KERNEL_CONFIG := hw_msm7x25_cm9_defconfig
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=u8160 mtdparts=msm_nand:5120k@51200k(boot),5120k@57088k(recovery),1280k@62208k(misc),384k@63488k(splash),174080k@63872k(system),74752k@237952k(cache),170624k@312704k(userdata),20480k@483328k(userdata2),20480k@503808k(cust)

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
