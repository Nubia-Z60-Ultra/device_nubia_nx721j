#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from nubia-sm8650-common
include device/nubia/sm8650-common/BoardConfigCommon.mk

DEVICE_PATH := device/nubia/nx721j

# DPI
TARGET_SCREEN_DENSITY := 480

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_nx721j
TARGET_RECOVERY_DEVICE_MODULES := libinit_nx721j

# Kernel (prebuilt)
#KERNEL_PREBUILT_DIR := device/nubia/nx721j-kernel

# OTA
TARGET_OTA_ASSERT_DEVICE := NX721J

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/properties/odm.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/configs/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(DEVICE_PATH)/configs/vintf/framework_matrix_nubia.xml


# Kernel
BOARD_KERNEL_BINARIES := kernel
BOARD_PREBUILT_DTBOIMAGE := device/nubia/nx721j/prebuilt/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := device/nubia/nx721j/prebuilt/kernel
TARGET_PREBUILT_DTB := device/nubia/nx721j/prebuilt/dtb.img
BOARD_SYSTEM_DLKM_PARTITION_SIZE := 65536

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/nubia/nx721j/prebuilt/system_dlkm/,$(TARGET_COPY_OUT_SYSTEM_DLKM)/lib/modules/6.1.57-android14-11-o-g22ef1e8b7975) \
    $(call find-copy-subdir-files,*,device/nubia/nx721j/prebuilt/vendor_dlkm/,$(TARGET_COPY_OUT_VENDOR_DLKM)/lib/modules) \
    $(call find-copy-subdir-files,*,device/nubia/nx721j/prebuilt/vendor_ramdisk/,$(TARGET_COPY_OUT_VENDOR_RAMDISK)/lib/modules)
