#!/bin/bash

# []の前後にスペースを入れないとエラーになる
if [ "$1" = "bin" ]; then
	echo "OK"
else
	echo "NG"
fi
