#!/bin/bash
#
# Recursive swift code wrapper generator for gobject-introspection (.gir) files.
# This calls the non-recursive gir-to-swift.sh to do the heavy lifting.
#
. ./config.sh
./package.sh update
if ! pushd .build/gir2swift >/dev/null 2>&1 ; then
	mkdir -p .build
	pushd .build >/dev/null
	git clone https://github.com/rpinz/gir2swift
	cd gir2swift && ./build.sh
fi
export PATH=`pwd`/.build/debug:${PATH}
popd >/dev/null
. ./gir-to-swift.sh "$@"
