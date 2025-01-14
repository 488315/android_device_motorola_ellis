#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/ellis

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ellis
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := ellis_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/mt6765

BOARD_KERNEL_PAGESIZE := 2048
BOARD_DTB_OFFSET := 0x07880000
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x07880000
BOARD_RAMDISK_OFFSET := 0x11b00000

BOARD_MKBOOTIMG_ARGS += \
	--base $(BOARD_KERNEL_BASE) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--dtb_offset $(BOARD_DTB_OFFSET) \
	--header_version $(BOARD_BOOTIMG_HEADER_VERSION)

BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Platform
TARGET_BOARD_PLATFORM := mt6765

# Inherit the proprietary files
include vendor/motorola/ellis/BoardConfigVendor.mk