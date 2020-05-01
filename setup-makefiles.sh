#!/bin/bash
#
# Copyright (C) 2020 The MoKee Open Source Project
# Copyright (C) 2020 The XPerience Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=m1852
VENDOR=meizu

INITIAL_COPYRIGHT_YEAR=2020

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

XPERIENCE_ROOT="$MY_DIR"/../../..

HELPER="$XPERIENCE_ROOT"/vendor/xperience/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$XPERIENCE_ROOT"

# Copyright headers and guards
write_headers

write_makefiles "${MY_DIR}/proprietary-files-m1852.txt"
write_makefiles "${MY_DIR}/proprietary-files.txt"
write_makefiles "${MY_DIR}/proprietary-files-qc.txt"

# Finish
write_footers
