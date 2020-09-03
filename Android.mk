LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := TermuxAPI
LOCAL_CERTIFICATE := platform
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_USE_AAPT2 := true

LOCAL_SDK_VERSION := 28
LOCAL_MIN_SDK_VERSION := 24

LOCAL_SRC_FILES += $(call all-java-files-under, src)

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_STATIC_ANDROID_LIBRARIES := \
	com.google.android.material_material \
	androidx.biometric_biometric \
	androidx.media_media

include $(BUILD_PACKAGE)