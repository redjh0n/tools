unzip_all() {
zipfile="$1"
next_zipfile="$(unzip -Z1 "$zipfile" | head -n1)"
if echo "$next_zipfile" | grep "\.zip$"; then
unzip -P "${next_zipfile%%.*}" "$zipfile"
unzip_all "$next_zipfile"
fi
}

unzip_all 37366.zip
