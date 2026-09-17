#!/bin/bash

l_00_echo_sys "source $(eval "echo \$dr_pth_fn_${rnd}")/.env.sh/init.env.tst_var.sh"

l_00_echo_ques "tst_var_<fn> = (0 is NOT action|0 is action) in function <fn>"


tst_var_def_type_1=1
l_00_echo_info "test in def_type fn :: tst_var_def_type_1=$tst_var_def_type_1"
