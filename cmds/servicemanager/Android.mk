LOCAL_PATH:= $(call my-dir)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := bctest.c binder.c
#LOCAL_MODULE := bctest
#include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_SRC_FILES := service_manager.c binder.c
LOCAL_MODULE := servicemanager
ifeq ($(BOARD_USE_YAMAHAPLAYER),true)
    LOCAL_CFLAGS += -DYAMAHAPLAYER
endif
ifeq ($(BOARD_USE_SECTVOUT),true)
    LOCAL_CFLAGS += -DSECTVOUT
endif
ifeq ($(BOARD_USE_ICOS_MIRROR_SERVICE),true)
    LOCAL_CFLAGS += -DICOS_MIRROR_SERVICE
endif
ifeq ($(BOARD_USE_HUAWEI_SERVICES),true)
    LOCAL_CFLAGS += -DHUAWEI_SERVICES
endif

include $(BUILD_EXECUTABLE)
