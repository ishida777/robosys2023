#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Ryuichi Ueda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINED}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINED}
[ "${out}" = "" ] || ng ${LINED}

out=$(echo | ./plus) #空文字
[ "$?" = 1 ]      || ng ${LINED}
[ "${out}" = "" ] || ng ${LINED}

["$res" = 0 ] && echo OK
exit $res
