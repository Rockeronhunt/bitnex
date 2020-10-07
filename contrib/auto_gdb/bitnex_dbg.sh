#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.bitnexcore/bitnexd.pid file instead
bitnex_pid=$(<~/.bitnexcore/testnet3/bitnexd.pid)
sudo gdb -batch -ex "source debug.gdb" bitnexd ${bitnex_pid}
