#!/bin/bash

check() {
    require_binaries loadkeys || return 1

    return 0
}

depends() {
    echo 0
}

install() {
    inst_multiple loadkeys
}
