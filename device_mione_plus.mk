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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/xiaomi/mione_plus/mione_plus-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/mione_plus/overlay

# GPS and Light
PRODUCT_PACKAGES += \
    gps.mione \
    lights.mione

# gps.conf
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/configs/gps.conf:system/etc/gps.conf

# mac support for mione_plus
# credit: huangqiwu
# https://github.com/mirom/android_device_xiaomi_mione_plus/commit/cf62e83ee96d90f0735c56b85fb8e252574c644d
PRODUCT_PACKAGES += \
    libreadmac

# Hostapd (Required for Wi-Fi)
PRODUCT_PACKAGES += \
    hostapd_cli \
    calibrator \
    hostapd

PRODUCT_PACKAGES += \
	  dualboot_init

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio_policy.conf \
    audio.primary.msm8660 \
    audio.usb.default \
    libaudio-resampler \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    lights.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libstagefrighthw \
    libOmxQcelp13Enc \
    libOmxEvrcEnc \
    libOmxAmrEnc

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# Torch
PRODUCT_PACKAGES += \
    Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Camera wrapper
PRODUCT_PACKAGES += \
    camera.msm8660

# Ramdisk files
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/ramdisk/init.mione.rc:root/init.mione.rc \
    device/xiaomi/mione_plus/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/xiaomi/mione_plus/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/xiaomi/mione_plus/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/xiaomi/mione_plus/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/xiaomi/mione_plus/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/xiaomi/mione_plus/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/xiaomi/mione_plus/ramdisk/init.target.rc:root/init.target.rc \
    device/xiaomi/mione_plus/ramdisk/ueventd.mione.rc:root/ueventd.mione.rc \
    device/xiaomi/mione_plus/ramdisk/fstab.mione:root/fstab.mione \
    device/xiaomi/mione_plus/ramdisk/sbin/chargeonlymode:root/sbin/chargeonlymode

# wifi
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Input device config
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/configs/mxt224_ts_input.idc:system/usr/idc/synaptics_rmi4_i2c.idc \
    device/xiaomi/mione_plus/configs/mxt224_ts_input.idc:system/usr/idc/ft5x0x.idc \
    device/xiaomi/mione_plus/configs/mxt224_ts_input.idc:system/usr/idc/sensor00fn11.idc \
    device/xiaomi/mione_plus/configs/mxt224_ts_input.idc:system/usr/idc/sensor00fn54.idc \
    device/xiaomi/mione_plus/configs/mxt224_ts_input.idc:system/usr/idc/mxt224_ts_input.idc \
    device/xiaomi/mione_plus/configs/mxt224_ts_input.idc:system/usr/idc/mXT-touch.idc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/configs/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/xiaomi/mione_plus/configs/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh

# Media configuration
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/xiaomi/mione_plus/configs/media_profiles.xml:system/etc/media_profiles.xml

# MSM8660 firmware
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/xiaomi/mione_plus/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/xiaomi/mione_plus/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw

# Thermal configuration
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/configs/thermald.conf:system/etc/thermald.conf

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    ro.opengles.version=131072 \
    dalvik.vm.dexopt-flags=m=y \
    persist.sys.timezone=Asia/Shanghai

# xiaomi mione wifi config
$(call inherit-product, device/xiaomi/mione_plus/mione_bcm43xx.mk)

# dalvik tweak
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
