#!/bin/bash

fn_2436_31385() {

	local fl_pth_fn_2436_31385="${HOME}/fns_bsh/.d/.p.ax/.p001.d/cp_this.sh"
	local dr_pth_fn_2436_31385=$(dirname ${HOME}/fns_bsh/.d/.p.ax/.p001.d/cp_this.sh)
	local fl_nm_fn_2436_31385=$(basename ${HOME}/fns_bsh/.d/.p.ax/.p001.d/cp_this.sh)
	local rnd=2436_31385

	eval "local prnt1_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/..)"
	eval "local prnt2_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/../..)"

	# [[ -z "$1" ]] && {
	#     # snp "out_err"
	#     echo -e "${ECHO_RET1}in file://$fn_nm_{fn_nm} , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
	#     return 1
	# }

	[[ "$1" == "-h" ]] && {
		echo -e "
        this -h for $(eval "echo \$fl_pth_fn_${rnd}") ::
        doing :: 
			\$1 - 
			\$2 - 
			\$3 - 
            exa use ::
            far use ::
        "
		return 0
	}

	#* value indicator
	eval "local arg_1_fn_${rnd}=\"\$1\""
	eval "echo \\\$1=\$arg_1_fn_${rnd}"
	eval "local arg_2_fn_${rnd}=\"\$2\""
	eval "echo \\\$2=\$arg_2_fn_${rnd}"
	eval "local arg_3_fn_${rnd}=\"\$3\""
	eval "echo \\\$3=\$arg_3_fn_${rnd}"

	eval "echo \"fl_pth_fn=\$fl_pth_fn_${rnd}\""
	eval "echo \"dr_pth_fn=\$dr_pth_fn_${rnd}\""
	eval "echo \"fl_nm_fn=\$fl_nm_fn_${rnd}\""
	eval "echo \"prnt1_dr_pth_fn=\$prnt1_dr_pth_fn_${rnd}\""
	eval "echo \"prnt2_dr_pth_fn=\$prnt2_dr_pth_fn_${rnd}\""

	#* indicate with ${rnd}
	# eval "echo \\\$prnt_dr_${rnd}=\$prnt_dr_${rnd}"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_2219_9919 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# eval "local ptr_path_1=\"$arg_1_fn_${rnd}\""
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
	# echo "\$ptr_path_1=$ptr_path_1"
	# eval "arg_1_fn_${rnd}=\$ptr_path_1"

	#* STANDART ENV THAT FILE
	# arg1 ::
	# $(eval "echo \$arg_1_fn_${rnd}")
	# arg2 ::
	# $(eval "echo \$arg_2_fn_${rnd}")
	# arg3 ::
	# $(eval "echo \$arg_3_fn_${rnd}")
	# fl_pth_fn ::
	# $(eval "echo \$fl_pth_fn_${rnd}")
	# dr_pth_fn ::
	# $(eval "echo \$dr_pth_fn_${rnd}")
	# fl_nm_fn ::
	# $(eval "echo \$fl_nm_fn_${rnd}")
	# prnt1_dr_pth_fn ::
	# $(eval "echo \$prnt1_dr_pth_fn_${rnd}")
	# prnt2_dr_pth_fn ::
	# $(eval "echo \$prnt2_dr_pth_fn_${rnd}")

	#* use l_ ::
	# l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
	# lfoe_path_to_var ::  insert pth \${HOME} into string '${HOME}'
	# lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

	# {{body}}
	l_00_echo_code "cp -r $(eval "echo \$dr_pth_fn_${rnd}")/.p001 $(eval "echo \$arg_1_fn_${rnd}")"

	rm -rf $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
	rm -rf $(eval "echo \$arg_1_fn_${rnd}")/.p001

	cp -r $(eval "echo \$dr_pth_fn_${rnd}")/.p001 $(eval "echo \$arg_1_fn_${rnd}")

	# l_00_echo_code "mv $(eval "echo \$arg_1_fn_${rnd}")/.p001 $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"
	mv $(eval "echo \$arg_1_fn_${rnd}")/.p001 $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

	# l_01_prs_f -n2 $(eval "echo \$arg_1_fn_${rnd}")

	eval "local nm_fn_${rnd}=\$(l_01_prs_f -n2 \$arg_1_fn_${rnd})"

	eval "echo \\\$nm_fn_${rnd}=\$nm_fn_${rnd}"

	# $(eval "echo \$nm_fn_${rnd}")
	l_00_echo_code "cd $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")"
	cd $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")

	#? eval "mv fl_nm.* \$nm_fn_${rnd}.*"

	return 0

}

fn_2436_31385 $@
