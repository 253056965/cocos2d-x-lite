LOCAL_PATH := $(call my-dir)
#==============================================================
include $(CLEAR_VARS)

LOCAL_MODULE := cocos2d_js_static
LOCAL_MODULE_FILENAME := libjscocos2d

ifeq ($(USE_ARM_MODE),1)
LOCAL_ARM_MODE := arm
endif

LOCAL_SRC_FILES := ../auto/jsb_cocos2dx_extension_auto.cpp \
                   ../auto/jsb_cocos2dx_experimental_webView_auto.cpp \
                   ../auto/jsb_cocos2dx_experimental_video_auto.cpp \
                   ../auto/jsb_cocos2dx_spine_auto.cpp \
                   ../auto/jsb_cocos2dx_auto.cpp \
                   ../auto/jsb_cocos2dx_audioengine_auto.cpp \
                   ../auto/jsb_cocos2dx_studio_auto.cpp \
                   ../auto/jsb_cocos2dx_builder_auto.cpp \
                   ../auto/jsb_cocos2dx_ui_auto.cpp \
                   ../auto/jsb_creator_auto.cpp \
                   ../manual/js_module_register.cpp \
                   ../manual/ScriptingCore.cpp \
                   ../manual/cocos2d_specifics.cpp \
                   ../manual/js_manual_conversions.cpp \
                   ../manual/js_bindings_core.cpp \
                   ../manual/js_bindings_opengl.cpp \
                   ../manual/jsb_opengl_functions.cpp \
                   ../manual/jsb_opengl_manual.cpp \
                   ../manual/jsb_opengl_registration.cpp \
                   ../manual/jsb_event_dispatcher_manual.cpp \
                   ../manual/component/CCComponentJS.cpp \
                   ../manual/experimental/jsb_cocos2dx_experimental_video_manual.cpp \
                   ../manual/experimental/jsb_cocos2dx_experimental_webView_manual.cpp \
                   ../manual/cocosbuilder/js_bindings_ccbreader.cpp \
                   ../manual/cocostudio/jsb_cocos2dx_studio_conversions.cpp \
                   ../manual/cocostudio/jsb_cocos2dx_studio_manual.cpp \
                   ../manual/extension/jsb_cocos2dx_extension_manual.cpp \
                   ../manual/localstorage/js_bindings_system_functions.cpp \
                   ../manual/localstorage/js_bindings_system_registration.cpp \
                   ../manual/network/jsb_socketio.cpp \
                   ../manual/network/jsb_websocket.cpp \
                   ../manual/network/XMLHTTPRequest.cpp \
                   ../manual/spine/jsb_cocos2dx_spine_manual.cpp \
                   ../manual/ui/jsb_cocos2dx_ui_manual.cpp \
                   ../manual/chipmunk/js_bindings_chipmunk_auto_classes.cpp \
                   ../manual/chipmunk/js_bindings_chipmunk_functions.cpp \
                   ../manual/chipmunk/js_bindings_chipmunk_manual.cpp \
                   ../manual/chipmunk/js_bindings_chipmunk_registration.cpp

LOCAL_CFLAGS := -DCOCOS2D_JAVASCRIPT

LOCAL_EXPORT_CFLAGS := -DCOCOS2D_JAVASCRIPT

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../manual \
                    $(LOCAL_PATH)/../manual/cocostudio \
                    $(LOCAL_PATH)/../manual/spine \
                    $(LOCAL_PATH)/../auto \
                    $(LOCAL_PATH)/../../../2d \
                    $(LOCAL_PATH)/../../../base \
                    $(LOCAL_PATH)/../../../ui \
                    $(LOCAL_PATH)/../../../audio/include \
                    $(LOCAL_PATH)/../../../storage \
                    $(LOCAL_PATH)/../../../../extensions \
                    $(LOCAL_PATH)/../../../editor-support/spine \
                    $(LOCAL_PATH)/../../../editor-support/cocosbuilder \
                    $(LOCAL_PATH)/../../../editor-support/cocostudio \
                    $(LOCAL_PATH)/../../../editor-support/creator


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../manual \
                           $(LOCAL_PATH)/../auto \
                           $(LOCAL_PATH)/../../../audio/include

LOCAL_EXPORT_LDLIBS := -lz

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2d_js_android_static

LOCAL_STATIC_LIBRARIES := cocos2dx_static
LOCAL_STATIC_LIBRARIES += spidermonkey_static

include $(BUILD_STATIC_LIBRARY)
#==============================================================
$(call import-module,cocos)
