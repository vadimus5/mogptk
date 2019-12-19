#!/usr/bin/bash
find * -type f -name '*.html' -exec rm -fr {} + || exit 1
pdoc --html --force -o . ../mogptk || exit 1
mv -f mogptk/* . || exit 1
rmdir mogptk || exit 1
