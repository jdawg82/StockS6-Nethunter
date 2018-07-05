#!/bin/bash

mkdir modout
make selected_defconfig
make INSTALL_MOD_PATH=modout
make INSTALL_MOD_PATH=modout  INSTALL_MOD_STRIP=1 modules_install
bash dtbgen.sh
