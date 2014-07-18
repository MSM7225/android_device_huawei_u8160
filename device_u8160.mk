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
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay
    
# Audio Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt
    
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
    $(LOCAL_PATH)/prebuilt/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf
    
# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/touchscreen.idc:system/usr/idc/synaptics.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/touchscreen-keys.kl:system/usr/keylayout/melfas-touchscreen.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/touchscreen-keys.kl:system/usr/keylayout/synaptics.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/touchscreen-keys.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl
    
# Huawei Hardware setup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02setuphuawei:system/etc/init.d/02setuphuawei

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.u8160.rc:root/init.u8160.rc \
    $(LOCAL_PATH)/ramdisk/init.u8160.usb.rc:root/init.u8160.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.u8160.rc:root/ueventd.u8160.rc
