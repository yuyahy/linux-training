#!/bin/bash

list_recursive ()
{
	local filepath=$1
	local indent=$2

	# インデント付きでパス部分を除外してファイル名を表示する
	echo "${indent}${filepath##*/}"

	if [ -d "$filepath" ]; then
		IFS='
		'
		# ディレクトリである場合は、再帰的に処理
		local fname
		for fname in $(ls "$filepath")
		do
			list_recursive "${filepath}/${fname}" "		$indent"
		done
	fi
}

list_recursive "$1" ""
