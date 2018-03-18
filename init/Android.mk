LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_STATIC_LIBRARIES := libbase liblog
LOCAL_SRC_FILES := init_alice.cpp
LOCAL_MODULE := libinit_hi6210sft

include $(BUILD_STATIC_LIBRARY)
