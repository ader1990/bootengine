#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

install() {
    inst_rules "$moddir/65-start-root.rules"

    sed -i 's/After=local-fs.target /After=/' "$initdir/usr/lib/systemd/system/systemd-tmpfiles-setup.service"
}
