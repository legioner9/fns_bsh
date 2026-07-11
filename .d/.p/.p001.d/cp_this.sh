#!/bin/bash

fn_2219_9919(){

    local fl_pth_fn_2219_9919="${HOME}/fns_bsh/.d/.p/.p001.d/cp_this.sh"
    local dr_pth_fn_2219_9919=$(dirname ${HOME}/fns_bsh/.d/.p/.p001.d/cp_this.sh)
    local fl_nm_fn_2219_9919=$(basename ${HOME}/fns_bsh/.d/.p/.p001.d/cp_this.sh)
    local rnd=2219_9919

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_{fn_nm} , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_2219_9919 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

	eval "local arg_1_fn_${rnd}=\"\$1\""
	# eval "echo \\\$1=\$arg_1_fn_${rnd}"
	eval "local arg_2_fn_${rnd}=\"\$2\""
	# eval "echo \\\$2=\$arg_2_fn_${rnd}"
	eval "local arg_1_fn_${rnd}=\"\$1\""
	# eval "echo \\\$3=\$arg_3_fn_${rnd}"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_2219_9919 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_2219_9919"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
	
	#-- echo "\$ptr_path_1=$ptr_path_1"

	#* assign 
	#-- eval "arg_1_fn_${rnd}=\$ptr_path_1"

	#* value indicator
	#-- eval "echo arg_1_fn_${rnd}= \$arg_1_fn_${rnd}"
	#-- eval "echo arg_2_fn_${rnd}= \$arg_2_fn_${rnd}"

	#* value variable
	#-- $(eval "echo \$arg_1_fn_${rnd})" 	:: arg1
	#-- $(eval "echo \$arg_2_fn_${rnd})" 	:: arg2
	#-- $(eval "echo \$fl_pth_fn_${rnd})" 	:: fl_pth_fn
	#-- $(eval "echo \$dr_pth_fn_${rnd})" 	:: dr_pth_fn
	#-- $(eval "echo \$fl_nm_fn_${rnd})" 	:: fl_nm_fn
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert pth \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

	#-- readlink -m "${dr_pth_fn_${rnd}}/.."
	#-- abs path to parent dr_pth_fn (only if exist) $(readlink -m "${dr_pth_fn_fn_2219_9919}/..")
    # contane {\fn_nm\} 

	# STANDART ENV THAT FILE
	# parent file pth : $(eval echo \$fl_pth_fn_${rnd})
	# dr pth parent file : $(eval echo \$dr_pth_fn_${rnd})
	# file pth nm : $(eval echo \$fl_nm_fn_${rnd})

	# arg1 in_runtime fn : $(eval echo \$arg_1_fn_${rnd})
	# arg2 in_runtime fn : $(eval echo \$arg_2_fn_${rnd})
	# arg3 in_runtime fn : $(eval echo \$arg_3_fn_${rnd})

	#-- echo "$(eval echo "\$dr_pth_fn_${rnd}")"
	#-- eval "local prnt_dr_${rnd}=\$(readlink -m \$(eval echo "\\\$dr_pth_fn_${rnd}")/..)"
	#-- eval "echo \\\$prnt_dr_${rnd}=\$prnt_dr_${rnd}"
	# {{body}}

    return 0

}

fn_2219_9919 $@