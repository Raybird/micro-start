#! /bin/bash

RELEASE="3.4.4"

wget https://github.com/etcd-io/etcd/releases/download/v${RELEASE}/etcd-v${RELEASE}-linux-amd64.tar.gz

tar xvf etcd-v${RELEASE}-linux-amd64.tar.gz

cd etcd-v${RELEASE}-linux-amd64

sudo mv etcd etcdctl /usr/local/bin

cd ..

rm -rf etcd-v${RELEASE}-linux-amd64

rm etcd-v${RELEASE}-linux-amd64.tar.gz

etcd --version