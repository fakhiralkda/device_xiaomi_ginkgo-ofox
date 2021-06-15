#
# Copyright (C) 2019-2020 OrangeFox Recovery Project
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# See <http://www.gnu.org/licenses/>.
#
# Please maintain this if you use this script or any part of it
#
FDEVICE="ginkgo"
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
	export FOX_DELETE_AROMAFM="1"
        export PLATFORM_VERSION="16.1.0"
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_USE_NEW_MAGISKBOOT=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_REPLACE_BUSYBOX_PS=1
	export FOX_USE_BASH_SHELL=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
        export OF_SCREEN_H=2340
        export OF_STATUS_H=80
        export OF_STATUS_INDENT_LEFT=48
        export OF_STATUS_INDENT_RIGHT=48
	export OF_OTA_RES_DECRYPT=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_ZIP_BINARY=1
        export OF_MIUI_OTA_VENDOR_BACKUP=1
	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
		export TARGET_DEVICE_ALT="willow"
	export OF_FBE_METADATA_MOUNT_IGNORE=1
	export OF_CHECK_OVERWRITE_ATTEMPTS=1
	export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
	export OF_OTA_BACKUP_STOCK_BOOT_IMAGE=1
	export FOX_BUGGED_AOSP_ARB_WORKAROUND=1510672800
	export OF_USE_TWRP_SAR_DETECT=1
	export FOX_QUICK_BACKUP_LIST="/data;/boot;/vendor_image;/system_image"
	export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
	export OF_PATCH_AVB20=1
	export FOX_DISABLE_APP_MANAGER=1
	export FOX_USE_SPECIFIC_MAGISK_ZIP="./magisk/magisk.apk"
	
	# R11 build vars
	export FOX_R11=1
	export FOX_ADVANCED_SECURITY=1

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
  	fi

	add_lunch_combo omni_"$FDEVICE"-eng
fi
#
