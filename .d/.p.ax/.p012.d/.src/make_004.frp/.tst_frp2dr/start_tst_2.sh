#!/bin/bash

fn_22536_8530(){
    
    local fl_pth_fn_22536_8530="${HOME}/aer_foe/.d/.frp/make_004.frp/.tst_frp2dr/start_tst_2.sh"
    local dr_pth_fn_22536_8530=$(dirname ${HOME}/aer_foe/.d/.frp/make_004.frp/.tst_frp2dr/start_tst_2.sh)
    local fl_nm_fn_22536_8530=$(basename ${HOME}/aer_foe/.d/.frp/make_004.frp/.tst_frp2dr/start_tst_2.sh)
    local rnd=22536_8530
    
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # {{body}}
    rm -rf ${dr_pth_fn_22536_8530}/v1/root
    mkdir ${dr_pth_fn_22536_8530}/v1/root

    . ${HOME}/aer_foe/.d/.frp/make_004.frp/frp2dr.sh ${dr_pth_fn_22536_8530}/v1/root

    . ${dr_pth_fn_22536_8530}/v1/root/gig_dr.sh 001 ${dr_pth_fn_22536_8530}/v1/root/_.f.d/_.f.001 file.c
    return 0
    
}

fn_22536_8530 $@