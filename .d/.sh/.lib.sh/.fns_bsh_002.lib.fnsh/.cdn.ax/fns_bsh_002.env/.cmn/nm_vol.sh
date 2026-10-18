#!/bin/bash

#$(eval "echo \$fl_pth_fn_${rnd}")
dr_pth_fn=$(dirname $(eval "echo \$fl_pth_fn_${rnd}"))
fl_nm_fn=$(basename $(eval "echo \$fl_pth_fn_${rnd}"))
eval "local prnt1_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/..)"
eval "local prnt2_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/../..)"
eval "fn_nm_${rnd}=\$(l_01_prs_f -n \$fl_nm_fn_${rnd})"

eval "fl_tst_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.tst/g.tst"
eval "g_d_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.g.d"
eval "us_dr_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.us"