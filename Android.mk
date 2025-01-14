LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := ArielProtector

LOCAL_CERTIFICATE := platform

LOCAL_PRIVILEGED_MODULE := true

LOCAL_SYSTEM_EXT_MODULE := true

LOCAL_USES_LIBRARIES := com.arielos.platform

LOCAL_MODULE_CLASS := APPS
ifneq (,$(filter eng,$(TARGET_BUILD_VARIANT)))
  # eng builds use debug ArielProtector app
  LOCAL_SRC_FILES := app-debug.apk
else
  # userdebug builds use release ArielProtector app
  LOCAL_SRC_FILES := app-release.apk
endif

include $(BUILD_PREBUILT)
