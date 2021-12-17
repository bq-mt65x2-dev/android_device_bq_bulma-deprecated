#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(my-dir)

# audio.primary.mt6592 shims
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_audio
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := audio/audio.cpp
LOCAL_SHARED_LIBRARIES := libbinder libutils liblog libgui libui libicuuc
include $(BUILD_SHARED_LIBRARY)

# graphics shims
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_graphics
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := graphics/graphics.cpp
LOCAL_SHARED_LIBRARIES := libui
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# libxlog shims
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(LIBLOG_CFLAGS)
LOCAL_MODULE := libxlog
LOCAL_SRC_FILES := xlog/xlog.c
LOCAL_C_INCLUDES += system/core/include/
LOCAL_SHARED_LIBRARIES := libcutils liblog
include $(BUILD_SHARED_LIBRARY)
