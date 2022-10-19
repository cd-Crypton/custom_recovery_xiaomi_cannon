#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),cannong)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

ifeq ($(TW_INCLUDE_FASTBOOTD), true)
    LOCAL_CFLAGS += -DTW_INCLUDE_FASTBOOTD
endif