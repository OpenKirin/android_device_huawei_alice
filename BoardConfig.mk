#
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_PATH := device/huawei/alice

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_GPU := mali-450mp

TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

TARGET_BOARD_PLATFORM := hi6210sft
BOARD_VENDOR_PLATFORM := hi6210sft

WITH_DEXPREOPT := true

# Assert
TARGET_OTA_ASSERT_DEVICE := hi6210sft,alice

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Camera
TARGET_KEEP_LEGACY_CAMERA_PACKAGE := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_PROVIDES_CAMERA_HAL := true
TARGET_USES_NON_TREBLE_CAMERA := true
CAMERA_DAEMON_NOT_PRESENT=true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_RECOVERY_NEEDS_FBIOPAN_DISPLAY := true
BACKLIGHT_PATH := /sys/class/leds/lcd_backlight0/brightness
BOARD_HEALTHD_CUSTOM_CHARGER_RES := $(DEVICE_PATH)/images

# Display
USE_OPENGL_RENDERER := true
TARGET_HARDWARE_3D := true
ANDROID_ENABLE_RENDERSCRIPT := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
SF_START_GRAPHICS_ALLOCATOR_SERVICE := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
TARGET_USES_ION := true
TARGET_USE_PAN_DISPLAY := true
TARGET_OMX_LEGACY_RESCALING := true
BOARD_SUPPORTS_DOZE_POWER_MODES := true

# Extended Filesystem Support
TARGET_EXFAT_DRIVER := exfat

# Kernel
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 coherent_pool=512K no_irq_affinity ate_enable=true androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_SOURCE := kernel/huawei/alice
TARGET_KERNEL_CONFIG := alice_defconfig

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_FLASH_BLOCK_SIZE := 131072

# Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.hi6210sft

# Enable WEBGL
ENABLE_WEBGL := true

# RIL
TARGET_BUILD_JAVA_SUPPORT_LEVEL := platform

# Wifi
WPA_SUPPLICANT_VERSION          := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER 	:= NL80211
BOARD_HOSTAPD_DRIVER 		:= NL80211
CONFIG_DRIVER_NL80211		:= y

# Vendor Init
TARGET_INIT_VENDOR_LIB := libinit_hi6210sft

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
	device/huawei/alice/sepolicy

# Shims
TARGET_LD_SHIM_LIBS := /system/lib/libcutils.so|libshim_log.so:/system/lib64/libcutils.so|libshim_log.so:/system/lib/libhuaweiprocessing.so|libshim_icu.so:/system/lib/libcamera_core.so|libshim_camera.so:/system/lib/hw/audio.primary.hi6210sft.so|libshim_audioroute.so:/system/lib/hw/audio.primary.hi6210sft.so|libshim_icu.so:/system/lib64/libril.so|libshim_icu.so:/system/lib/libcamera_post_mediaserver.so|libshim_camera.so:/system/lib/libFNVfbEngineLib.so|libshim_gui.so:/system/lib/libcamera_core.so|libshim_gui.so

# inherit from the proprietary version
-include vendor/huawei/alice/BoardConfigVendor.mk
