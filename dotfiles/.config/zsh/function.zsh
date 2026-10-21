f() {
    local p
    p=$(find /mnt/Data -print | fzf) || return
    [ -n "$p" ] && xdg-open "$p" >/dev/null 2>&1
}
