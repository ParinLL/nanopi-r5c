#!/bin/sh

# Copyright (C) 2023, John Clark <inindev@gmail.com>
# Copyright (C) 2024, Etienne Dublé <etienne.duble@imag.fr>

set -e
. ./env.sh
. ./tools.sh

print_hdr "Change mirror to TWDS"
apt update
apt install ca-certificates -y
sed -i 's|http://deb.debian.org/debian|https://mirror.twds.com.tw/debian|g' /etc/apt/sources.list.d/debian.sources
