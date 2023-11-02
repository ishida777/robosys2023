#!/bin/bash
# SPDX-FileCopyrightText: 2022 Ryuichi Ueda
# SPDX-Licenese-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 14 ] || ng ${LINENO}

[ "$res" = O ] && echo OK
exit $res
