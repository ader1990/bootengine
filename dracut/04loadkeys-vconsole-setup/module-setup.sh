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
}
