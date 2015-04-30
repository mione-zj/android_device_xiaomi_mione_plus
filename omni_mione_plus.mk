
# Release name
PRODUCT_RELEASE_NAME := mione_plus

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit some common OMNI stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/mione_plus/device_mione_plus.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := mione_plus
PRODUCT_NAME := omni_mione_plus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI-ONE Plus
PRODUCT_MANUFACTURER := Xiaomi

# ROM_BUILDTYPE
ROM_BUILDTYPE := NIGHTLY

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=mione_plus \
	BUILD_FINGERPRINT="Xiaomi/mione_plus/mione_plus:4.1.2/JZO54K/4.12.5:user/release-keys" \
	PRIVATE_BUILD_DESC="mione_plus-user 4.1.2 JZO54K 4.12.5 release-keys"
