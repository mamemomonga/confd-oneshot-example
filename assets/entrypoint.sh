#!/bin/sh
set -eu

mkdir -p /configs
mkdir -p /configs/bin

cd /configs
cat > /configs.yaml
confd -backend=file -file="/configs.yaml" -onetime 
tar cC / configs