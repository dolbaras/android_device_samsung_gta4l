# PixelExperience Plus product для gta4l (SM-T505, LTE-планшет).
# Наследует HARDWARE-конфиг устройства (device.mk, ROM-агностичен) + PE-конфиг + GApps.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Hardware (то же, что и для LineageOS — все наши A11-фиксы)
$(call inherit-product, device/samsung/gta4l/device.mk)

# PixelExperience: LTE-планшету нужна телефония → common_full_phone (не tablet_wifionly)
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# GApps (вшиты в PE)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 800

PRODUCT_DEVICE := gta4l
PRODUCT_NAME := aosp_gta4l
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T505
PRODUCT_MANUFACTURER := samsung
PRODUCT_SYSTEM_NAME := gta4lxx
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=gta4lxx \
    PRIVATE_BUILD_DESC="gta4lxx-user 12 SP1A.210812.016 T505XXS6CWI2 release-keys"
BUILD_FINGERPRINT := "samsung/gta4lxx/qssi:12/SP1A.210812.016/T505XXS6CWI2:user/release-keys"
