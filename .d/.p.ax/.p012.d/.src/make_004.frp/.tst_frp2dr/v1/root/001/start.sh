#!/bin/bash

fn_26853_10781(){

    local fl_pth_fn_26853_10781="${HOME}/aer_foe/.d/.frp/make_004.frp/.tst_frp2dr/v1/root/001/start.sh"
    local dr_pth_fn_26853_10781=$(dirname ${HOME}/aer_foe/.d/.frp/make_004.frp/.tst_frp2dr/v1/root/001/start.sh)
    local fl_nm_fn_26853_10781=$(basename ${HOME}/aer_foe/.d/.frp/make_004.frp/.tst_frp2dr/v1/root/001/start.sh)
    local rnd=26853_10781

        [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make hello.cxe
    
    ./hello.cxe
    return 0

}

fn_26853_10781 $@