#!/bin/bash

cd $HOME || echo "EXEC_FAIL 'cd $HOME'" >&2

read -p "DO? git clone https://gitflic.ru/project/legioner9/aer_foe.git"
git clone https://gitflic.ru/project/legioner9/aer_foe.git

read -p "DO? git clone https://gitflic.ru/project/legioner9/fns_bsh.git"
git clone https://gitflic.ru/project/legioner9/fns_bsh.git

read -p "DO? wget https://gitflic.ru/project/legioner9/fns_bsh.git"
