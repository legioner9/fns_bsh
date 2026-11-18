#!/bin/bash

cd $HOME || echo "EXEC_FAIL 'cd $HOME'" >&2

read -p "DO? git clone https://gitflic.ru/project/legioner9/aer_foe.git"
git clone https://gitflic.ru/project/legioner9/aer_foe.git

read -p "DO? git clone https://gitflic.ru/project/legioner9/fns_bsh.git"
git clone https://gitflic.ru/project/legioner9/fns_bsh.git

read -p "DO? example for_example.bashrc  curl https://gitflic.ru/project/legioner9/fns_bsh/blob/raw?file=.d%2F.cdn.ax%2Ffor_example.bashrc"
curl https://gitflic.ru/project/legioner9/fns_bsh/blob/raw?file=.d%2F.cdn.ax%2Ffor_example.bashrc > ${HOME}/for_example.bashrc

read -p "DO? example for_example.bashrc  curl https://gitflic.ru/project/legioner9/fns_bsh/blob/raw?file=.d%2F.this%2Finit1.man"
curl https://gitflic.ru/project/legioner9/fns_bsh/blob/raw?file=.d%2F.this%2Finit1.man > ${HOME}/init1.man