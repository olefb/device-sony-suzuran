# Copyright 2014 The Android Open Source Project
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

# Assert
TARGET_OTA_ASSERT_DEVICE := E5823,suzuran

# Boot animation
TARGET_BOOTANIMATION_SIZE := 720x480

# TWRP Recovery
TW_THEME := portrait_hdpi
TW_IGNORE_ABS_MT_TRACKING_ID := true

# Inherit AOSP suzuran device parts
$(call inherit-product, device/sony/suzuran/aosp_e5823.mk)

# Inherit Omni GSM telephony parts
PRODUCT_PROPERTY_OVERRIDES += telephony.lteOnGSMDevice=1
$(call inherit-product, vendor/omni/config/gsm.mk)

# Override Product Name for OmniROM
PRODUCT_NAME := omni_suzuran
PRODUCT_MODEL := Xperia Z5 Compact
