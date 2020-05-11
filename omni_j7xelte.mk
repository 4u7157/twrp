LOCAL_PATH := device/samsung/j7xelte

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Fix for prebuilt Image and dt
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/prebuilt/Image:kernel \
     $(LOCAL_PATH)/prebuilt/dt.img:dt.img \
     $(LOCAL_PATH)/prebuilt/dt.img:boot.img

PRODUCT_DEVICE := j7xelte
PRODUCT_NAME := omni_j7xelte
PRODUCT_MODEL := Galaxy J7 2016
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := j7xelte
