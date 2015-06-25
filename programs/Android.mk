# Copyright (C) 2015 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)

lz4_common_c_includes := $(LOCAL_PATH)/../lib
lz4_common_cflags := -O3 -std=c99 -Wall -Wextra -Wundef -Wshadow -Wcast-align -Wstrict-prototypes -pedantic -DLZ4_VERSION=\"r126\"
lz4_common_src_files := bench.c lz4cli.c lz4io.c

LOCAL_ARM_MODE := arm

include $(CLEAR_VARS)
LOCAL_MODULE := lz4
LOCAL_C_INCLUDES := $(lz4_common_c_includes)
LOCAL_CFLAGS := $(lz4_common_cflags)
LOCAL_SRC_FILES := $(lz4_common_src_files)
LOCAL_STATIC_LIBRARIES := liblz4
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := lz4
LOCAL_C_INCLUDES := $(lz4_common_c_includes)
LOCAL_CFLAGS := $(lz4_common_cflags)
LOCAL_SRC_FILES := $(lz4_common_src_files)
LOCAL_STATIC_LIBRARIES := liblz4
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_EXECUTABLE)
