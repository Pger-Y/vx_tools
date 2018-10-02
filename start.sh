pyenv activate env-2.7.10
pip install web.py

read -p 'Input your token(default token007):' TOKEN
[ -z "${TOKEN}" ] && TOKEN=token007
read -p 'Input your server port(default 80):' PORT
[ -z "${PORT}" ] && PORT=80
read -p 'Input your server path:' SPATH
[ -z "${SPATH}" ] && SPATH=Xweixin_pathX

if [ "$PORT" -ne 80 ];then
	echo "Server are not running on :80 please ensure nginx will transport to $PORT"
fi

echo Your token is $TOKEN,server will run on port $PORT,auth path $SPATH

sed "s/VXTOKEN/$TOKEN/" sample_handle.py > handle.py
sed "s/SPATH/$SPATH/" sample_main.py > main.py

python main.py $PORT
