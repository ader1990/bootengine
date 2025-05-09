install() {
    inst_rules "$moddir/64-decrypt-root.rules"

    inst_simple "$moddir/decrypt-root.service" \
        "$systemdsystemunitdir/decrypt-root.service"

    inst_simple /usr/lib64/cryptsetup/libcryptsetup-token-systemd-tpm2.so
    inst_simple "$moddir/keyfile" "/etc/luks2/keyfile"
}
