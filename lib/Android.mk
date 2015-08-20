# Copyright (C) 2015 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)

liblz4_src_files := lz4.c lz4hc.c lz4frame.c xxhash.c
liblz4_common_cflags := -O3 -std=c99 -Wall -Wextra -Wundef -Wshadow -Wcast-align -Wstrict-prototypes -pedantic

LOCAL_ARM_MODE := arm

include $(CLEAR_VARS)
LOCAL_MODULE := liblz4-host
LOCAL_SRC_FILES := $(liblz4_src_files)
LOCAL_CFLAGS := $(liblz4_common_cflags)
include $(BUILD_HOST_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := liblz4
LOCAL_SRC_FILES := $(liblz4_src_files)
LOCAL_CFLAGS := $(liblz4_common_cflags)
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := liblz4-static
LOCAL_SRC_FILES := $(liblz4_src_files)
LOCAL_CFLAGS := $(liblz4_common_cflags)
include $(BUILD_STATIC_LIBRARY)
