#!/bin/sh

# Copyright (C) 2023, John Clark <inindev@gmail.com>
# Copyright (C) 2024, Etienne Dublé <etienne.duble@imag.fr>

set -e
. ./env.sh
. ./tools.sh

print_hdr "Install nerdctl"
apt install containerd -y
systemctl enable containerd
# https://github.com/containerd/nerdctl/releases
NERDCTL_VERSION="2.0.3"
wget https://github.com/containerd/nerdctl/releases/download/v${NERDCTL_VERSION}/nerdctl-full-${NERDCTL_VERSION}-linux-arm64.tar.gz
tar Cxzvvf /usr/local nerdctl-full-${NERDCTL_VERSION}-linux-arm64.tar.gz
# https://github.com/moby/buildkit/releases
systemctl enable buildkit
# https://github.com/containernetworking/plugins/releases
CNI_VERSION="v1.6.2"
wget https://github.com/containernetworking/plugins/releases/download/${CNI_VERSION}/cni-plugins-linux-arm64-${CNI_VERSION}.tgz
mkdir -p /opt/cni/bin
tar Cxzvvf /opt/cni/bin cni-plugins-linux-arm64-${CNI_VERSION}.tgz