#!/bin/bash

fn_31209_29493(){
    
    local fl_pth_fn_31209_29493="${HOME}/aer_foe/.d/.frp/make_004.frp/frp2dr.sh"
    local dr_pth_fn_31209_29493=$(dirname ${HOME}/aer_foe/.d/.frp/make_004.frp/frp2dr.sh)
    local fl_nm_fn_31209_29493=$(basename ${HOME}/aer_foe/.d/.frp/make_004.frp/frp2dr.sh)
    local rnd=31209_29493
    
    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl ::
        doing :: cp make_004.frp to dr
            exa use ::
            far use ::
        "
    }
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
    # {{body}}
    
    
    #! ptr_path_N
    local ptr_path_1="$1"
    ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
    
    if [[ ! -d ${ptr_path_1} ]];then
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_31209_29493 , line=${LINENO}  ${ptr_path_1} NOT_DIR, return 1${NRM}" >&2
        return 1
    fi
    
    cp -r ${dr_pth_fn_31209_29493}/_.d ${ptr_path_1} || return 1
    cp -r ${dr_pth_fn_31209_29493}/_.f.d ${ptr_path_1} || return 1
    cp ${dr_pth_fn_31209_29493}/gig_dr.sh ${ptr_path_1} || return 1
    
    l_02_s2f {pth_to_gig_sh} ${ptr_path_1}/gig_dr.sh  ${ptr_path_1}/gig_dr.sh
    l_02_s2f "11604_52044" "${RANDOM}_${RANDOM}" ${ptr_path_1}/gig_dr.sh
    
    # lfoe_path_to_var :: recive \${HOME} incert '${HOME}'
    #     \$1 rel_pth fl for treat
    lfoe_path_to_var ${ptr_path_1}/gig_dr.sh
    return 0
}

fn_31209_29493 $@