LOCAL_PATH := $(call my-dir)

ifneq ($(filter mione_plus, $(TARGET_DEVICE)),)

    include $(call all-subdir-makefiles,$(LOCAL_PATH))

endif
