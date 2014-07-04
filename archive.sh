#!/bin/sh
for dir in */; do
    base=$(basename "$dir")
    if [ -d "${base}" ]; then
        echo "Compressing ${base}..."
        cd ${base}
        #tar -zcf "${base}.tar.gz" "${dir}"
        tar -zcf "${base}.tar.gz" *
        cd ..
        mv "${base}/${base}.tar.gz" .
        rm -rf "${base}"
        echo "Done"
    fi
done
