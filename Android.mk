LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := extract_elf_ramdisk.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libelf libc libm libz
LOCAL_C_INCLUDES := \
	external/elfutils/libelf \
	external/zlib
LOCAL_CFLAGS := -g -c -W
LOCAL_MODULE := extract_elf_ramdisk
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/sbin
include $(BUILD_EXECUTABLE)

