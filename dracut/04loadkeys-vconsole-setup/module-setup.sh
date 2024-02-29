#!/bin/bash

check() {
    require_binaries loadkeys || return 1

    return 0
}

depends() {
    return 0
}

install() {
    inst_multiple loadkeys || return 1

    # install only the minimum bits
    INST_DIR_KBD="/usr/share"
    inst_opt_decompress 
    inst_dir "$INST_DIR_KBD/keymaps/include"
    inst_dir "$INST_DIR_KBD/keymaps/i386/include"
    inst_opt "$INST_DIR_KBD/keymaps/i386/qwerty/us.map.gz"
}
