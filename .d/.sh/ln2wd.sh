#!/bin/bash

fn_4244_11737(){

    local fl_pth_fn_4244_11737="${HOME}/aer_foe/.d/.sh/ln2wd.sh"
    local dr_pth_fn_4244_11737=$(dirname ${HOME}/aer_foe/.d/.sh/ln2wd.sh)
    local fl_nm_fn_4244_11737=$(basename ${HOME}/aer_foe/.d/.sh/ln2wd.sh)
    local rnd=4244_11737

    [[ -z "$1" ]] && {
        # snp "out_err"
        echo -e "${ECHO_RET1}in file://$fn_nm_fn_4244_11737 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
        return 1
    }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_4244_11737 ::
        doing :: \$1 pth_to_src
				 \$2 nm_fl_dst
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_4244_11737="$1"
    local arg_2_fn_4244_11737="$2"
    local arg_3_fn_4244_11737="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_4244_11737 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_4244_11737} || return 1
    # local dr_1_fn_4244_11737=${dr_pth_fn_4244_11737}/${arg_1_fn_4244_11737}
    # local fl_1_fn_4244_11737=${dr_pth_fn_4244_11737}/${arg_1_fn_4244_11737}
    # contane {\fn_nm\} {{body}}

	

    return 0

}

fn_4244_11737 $@