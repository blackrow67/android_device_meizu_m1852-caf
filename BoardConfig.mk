#
# Copyright (C) 2020 The MoKee Open Source Project
# Copyright (C) 2020 The XPerience Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := meizu

DEVICE_PATH := device/meizu/m1852

# Assertion
TARGET_OTA_ASSERT_DEVICE := m1852,M1852

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Build
BUILD_BROKEN_DUP_RULES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo385

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := kryo385

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm710
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xA90000 androidboot.hardware=qcom androidboot.console=ttyMSM0 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 androidboot.configfs=true androidboot.usbcontroller=a600000.dwc3 swiotlb=1
BOARD_KERNEL_CMDLINE += g_android.luns=1 g_android.removable=1 g_android.cdrom=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_HEADER_SOURCE := kernel/meizu/sdm710
TARGET_KERNEL_CONFIG := sdm670-perf_defconfig

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := sdm710
TARGET_BOARD_PLATFORM_GPU := qcom-adreno616
TARGET_USE_SDCLANG := true

# Audio
USE_DEVICE_SPECIFIC_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_SOC := "cherokee"
QCOM_BT_USE_BTNV := true
TARGET_USE_QTI_BT_STACK := true
TARGET_USE_QTI_BT_CONFIGSTORE := true
TARGET_USE_QTI_BT_SAR := true
TARGET_USE_QTI_VND_FWK_DETECT := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
USE_CAMERA_STUB := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_LD_SHIM_LIBS += /vendor/lib/libmms_hal_vstab.so|/vendor/lib/libshim_camera.so
TARGET_LD_SHIM_LIBS += /vendor/lib/libmms_warper_vstab.so|/vendor/lib/libshim_camera.so

# Charger
WITH_MOKEE_CHARGER := false

# Display
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_HWC2 := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_OVERLAY := true
TARGET_USES_COLOR_METADATA := true
TARGET_CONTINUOUS_SPLASH_ENABLED := true
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 2
TARGET_USES_COMMONSYS_DISPLAY_LIBRARY := true
TARGET_USES_QCOM_UM_4_9_FAMILY := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# FM
BOARD_HAVE_QCOM_FM := false

# GPS
USE_DEVICE_SPECIFIC_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
USE_DEVICE_SPECIFIC_MEDIA := true
TARGET_USES_MEDIA_EXTENSIONS := true

# NFC 
TARGET_USES_NQ_NFC := false

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_COPY_OUT_VENDOR := vendor

# Power
TARGET_TAP_TO_WAKE_NODE := /dev/vendor.xperience.touch@1.0/dt2w
TARGET_USES_INTERACTION_BOOST := true

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop $(DEVICE_PATH)/system_meizu.prop

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true

# Releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_meizu_sdm710
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Root
BOARD_ROOT_EXTRA_FOLDERS := \
    bt_firmware \
    dsp \
    firmware \
    persist

# Root Symlinks
BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/persist:/persist

# RenderScript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# RIL
ENABLE_VENDOR_RIL_SERVICE := true
TARGET_RIL_VARIANT := caf

# Security patch level
VENDOR_SECURITY_PATCH := 2019-09-01

# SELinux
-include device/qcom/sepolicy/sepolicy.mk
TARGET_SEPOLICY_DIR := sdm710
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
TARGET_DECLARE_OWN_VNDK := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
QC_WIFI_HIDL_FEATURE_DUAL_AP := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_PATH := "/vendor/lib/modules/qca_cld3_wlan.ko"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
-include vendor/meizu/m1852/BoardConfigVendor.mk

#################################################################################
# XPerience bits
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true
#################################################################################
# This is the End of BoardConfig.mk file.
# Now, Pickup other split Board.mk files:
#################################################################################
# TODO: Relocate the system Board.mk files pickup into qssi lunch, once it is up.
-include vendor/qcom/defs/board-defs/system/*.mk
-include vendor/qcom/defs/board-defs/vendor/*.mk
#################################################################################
