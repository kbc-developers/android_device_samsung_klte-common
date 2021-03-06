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
DEVICE_NFC_SONY := yes

# NFC
#$(call inherit-product, device/samsung/klte-common/nfc/product.mk)
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Tag

PRODUCT_COPY_FILES += \
    device/samsung/klte-common/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# NFC Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

#------------------------
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl \
    android.hardware.nfc@1.0-service \
    com.android.nfc_extras \
    NfcSony \
    Tag

# Ramdisk for FeliCa
PRODUCT_PACKAGES += \
    init.carrier.rc \
    init.felica.sh

#Smart card service for felica
#TARGET_ENABLE_SMARTCARD_SERVICE := true
#PRODUCT_PACKAGES += \
#    org.simalliance.openmobileapi.xml org.simalliance.openmobileapi
