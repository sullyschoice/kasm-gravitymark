#!/usr/bin/env bash
set -ex
SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir -p /opt/gravitymark
cd /opt/gravitymark
wget https://tellusim.com/download/GravityMark_1.89.run
chmod -x /opt/gravitymark/GravityMark_1.89.run
echo y | bash /opt/gravitymark/GravityMark_1.89.run --nox11 --noexec --target /opt/gravitymark --
ls -la   /opt/gravitymark
#rm GravityMark_1.89.run
chown -R 1000:1000 /opt/gravitymark