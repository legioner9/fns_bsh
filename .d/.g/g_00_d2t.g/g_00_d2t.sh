#!/bin/bash

g_00_d2t() {

	local fl_pth_fn_23804_13966="${HOME}/fns_bsh/.d/.g/g_00_d2t.g/g_00_d2t.sh"
	local dr_pth_fn_23804_13966=$(dirname ${HOME}/fns_bsh/.d/.g/g_00_d2t.g/g_00_d2t.sh)
	local fl_nm_fn_23804_13966=$(basename ${HOME}/fns_bsh/.d/.g/g_00_d2t.g/g_00_d2t.sh)
	local rnd=23804_13966

	# [[ -z "$1" ]] && {
	#     # snp "out_err"
	#     echo -e "${ECHO_RET1}in file://$fn_nm_fn_23804_13966 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
	#     return 1
	# }

	[[ "$1" == "-h" ]] && {
		echo -e "
        this -h for fl_pth_fn_23804_13966 ::
        doing :: 
            exa use ::
            far use ::
        "
		return 0
	}

	local arg_1_fn_23804_13966="$1"
	local arg_2_fn_23804_13966="$2"
	local arg_3_fn_23804_13966="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_23804_13966 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_23804_13966"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

	# l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
	# lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
	# lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

	# cd ${dr_pth_fn_23804_13966} || return 1
	# local dr_1_fn_23804_13966=${dr_pth_fn_23804_13966}/${arg_1_fn_23804_13966}
	# local fl_1_fn_23804_13966=${dr_pth_fn_23804_13966}/${arg_1_fn_23804_13966}
	# contane {\fn_nm\}

	# STANDART ENV THAT FILE
	# parent file pth : $(eval echo \$fl_pth_fn_${rnd})
	# dr pth parent file : $(eval echo \$dr_pth_fn_${rnd})
	# file pth nm : $(eval echo \$fl_nm_fn_${rnd})

	# arg1 in_runtime fn : $(eval echo \$arg_1_fn_${rnd})
	# arg2 in_runtime fn : $(eval echo \$arg_2_fn_${rnd})
	# arg3 in_runtime fn : $(eval echo \$arg_3_fn_${rnd})

	# example :: var with dr_pth_fn :
	# echo "$(eval echo "\$dr_pth_fn_${rnd}")"
	# {{body}}

	return 0

}

# g_00_d2t $@
