LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

LOCAL_MODULE                  := libqservice
LOCAL_MODULE_TAGS             := optional
LOCAL_C_INCLUDES              := $(common_includes) $(kernel_includes)
LOCAL_SHARED_LIBRARIES        := $(common_libs) libbinder
LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"qdqservice\"
LOCAL_ADDITIONAL_DEPENDENCIES := $(common_deps)
LOCAL_SRC_FILES               := QService.cpp \
                                 IQService.cpp \
                                 IQClient.cpp
LOCAL_EXPORT_C_INCLUDE_DIRS_TO         := $(common_header_export_path)
LOCAL_EXPORT_C_INCLUDE_DIRS            := IQService.h \
                                 IQClient.h


include $(BUILD_SHARED_LIBRARY)
