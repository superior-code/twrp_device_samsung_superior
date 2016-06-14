LOCAL_PATH := device/samsung/superior

ifeq ($(TARGET_PREBUILT_KERNEL),)
        LOCAL_KERNEL := device/samsung/superior/kernel
else
        LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/fstab.superior:root/fstab.superior

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := omni_superior
PRODUCT_BRAND := samsung
