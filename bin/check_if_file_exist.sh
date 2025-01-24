
#!/bin/bash

logdir=/home/ubuntu/myapp/logs

if [ -d "$logdir" ]; then
	echo "ログディレクトリは: $logdir"
else
	echo "[ERROR] ログディレクトリが見つかりません: $logdir
"
fi
