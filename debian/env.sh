#!/bin/sh

# file media is sized with the number between 'mmc_' and '.img'
#   use 'm' for 1024^2 and 'g' for 1024^3
media='mmc_2g.img' # or block device '/dev/sdX'
deb_dist='bookworm'
acct_uid='debian'
acct_pass='debian'
extra_pkgs='curl, pciutils, sudo, unzip, wget, xxd, xz-utils, zip, zstd, htop, iftop, jq, yq, ca-certificates, neovim, lm-sensors, dnsutils'
hostname_pattern='nanopi-R5C-arm64'
# docker host $ python3 -m http.server 80
kernel_fw_url="http://172.17.0.1"
kernel_fw_sha256="a12cb38f4793394bf56c6702be29b6e4f09deca0714943bba98a492030651570"
release_url="https://github.com/inindev/nanopi-r5/releases/download/v12.0.3"

rst='\033[m'
bld='\033[1m'
red='\033[31m'
grn='\033[32m'
yel='\033[33m'
blu='\033[34m'
mag='\033[35m'
cya='\033[36m'
