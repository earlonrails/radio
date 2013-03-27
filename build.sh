#!/bin/bash

if $(command -v mxmlc >/dev/null 2>&1); then
	MXML=`which mxmlc`
else
	MXML=/Developer/AdobeFlex4SDK/bin/mxmlc
fi

"$MXML" -static-link-runtime-shared-libraries=true radio.mxml --output radio.swf

[ $? -eq 0 ] && open index.html