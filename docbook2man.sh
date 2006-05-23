#!/bin/sh
# $Id: docbook2man.sh,v 1.1 2006-05-23 19:08:46 adam Exp $
if test $2; then
	exec docbook2man $1
else
	echo "No second arg for docbook2man.sh"
	exit 1
fi
