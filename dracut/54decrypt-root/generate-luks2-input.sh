#!/bin/bash

set -x

LUKS2_INPUT="rootencrypted /dev/disk/by-partlabel/ROOT none luks,tpm2-device=auto"
echo "${LUKS2_INPUT}" > /tmp/luks2-input

