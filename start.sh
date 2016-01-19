#! /bin/sh

[ ! -f /data/headphones.ini ] && cat <<EOF > /data/headphones.ini
[General]
http_host = 0.0.0.0
EOF

git -C /headphones pull --depth=1
python2.7 /headphones/Headphones.py --datadir=/data --config=/data/headphones.ini
