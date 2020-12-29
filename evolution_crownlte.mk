#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/crownlte/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := crownlte
PRODUCT_NAME := evolution_crownlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

#Evo specific
#EVO_BUILD_TYPE := OFFICIAL
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1440

#Maintainer
EVO_DONATE_URL := https://www.paypal.me/garett09
EVO_MAINTAINER := garett09
#EVO_SUPPORT_URL := https://t.me/EvolutionX9810

# add fingerprint override to pass cts
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=crownltexx \
        PRIVATE_BUILD_DESC="crownltexx-user 10 QP1A.190711.020 N960FXXU6FTK1 release-keys"
