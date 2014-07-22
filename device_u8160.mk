# Copyright (C) 2010 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

# Inherit products
$(call inherit-product, vendor/huawei/u8160/vendor.mk)

# Add device package overlay
DEVICE_PACKAGE_OVERLAYS := device/huawei/u8160/overlay
    
# Audio Config
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt
    
# Radio FM (test)
#PRODUCT_PACKAGES += \
#    Effem \
#    libfmradio.bcm4329 \
#    hcitool \
#    hciconfig
    
# Bluetooth
PRODUCT_PACKAGES += \
    huawei_brcm_patchram_plus
    
# Bluetooth Config
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf
    
# Wi-Fi related
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8160/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf 
    
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
    
# Huawei Hardware setup
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/init.d/02setuphuawei:system/etc/init.d/02setuphuawei

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8160/ramdisk/init.u8160.rc:root/init.u8160.rc \
    device/huawei/u8160/ramdisk/init.u8160.usb.rc:root/init.u8160.usb.rc \
    device/huawei/u8160/ramdisk/ueventd.u8160.rc:root/ueventd.u8160.rc
