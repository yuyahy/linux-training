#!/bin/bash

list_recursive ()
{
	local filepath=$1

	echo "$filepath"

	if [ -d "$filepath" ]; then
		# ディレクトリである場合は、その中に含まれるファイルや
local fname
for fname in $(ls "$filepath")
do
	# ディレクトリ内のファイルを表�
	list_recursive "${filepath}/${fname}"
done

# ディレクトリを一覧表示する
	fi
}

list_recursive "$1"
