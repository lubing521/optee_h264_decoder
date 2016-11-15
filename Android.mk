LOCAL_PATH := $(call my-dir)

CFG_TEEC_PUBLIC_INCLUDE = $(LOCAL_PATH)/../optee_client/public

include $(CLEAR_VARS)
LOCAL_CFLAGS += -DANDROID_BUILD
LOCAL_CFLAGS += -Wall

LOCAL_SRC_FILES += host/tee_decoder.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/ta/include \
		$(CFG_TEEC_PUBLIC_INCLUDE) \

LOCAL_SHARED_LIBRARIES := libteec
LOCAL_MODULE := tee_decoder
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(LOCAL_PATH)/ta/Android.mk