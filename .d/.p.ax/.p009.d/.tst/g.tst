#!/bin/bash

fn_1759_1199(){

	l_00_echo_code "start :: <${FUNCNAME[0]}>"

    local fl_pth_fn_1759_1199="${HOME}/fns_bsh/.d/.p.ax/.p009.d/.tst/g.tst"
    local dr_pth_fn_1759_1199=$(dirname ${HOME}/fns_bsh/.d/.p.ax/.p009.d/.tst/g.tst)
    local fl_nm_fn_1759_1199=$(basename ${HOME}/fns_bsh/.d/.p.ax/.p009.d/.tst/g.tst)
    local rnd=1759_1199

	#-- ~001_genv~
	eval "local prnt1_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/..)"
	eval "local prnt2_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/../..)"
	eval "fn_nm_${rnd}=\$(l_01_prs_f -n \$fl_nm_fn_${rnd})"

	#-- {{002_genv}}
		
	eval "fl_tst_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.tst/g.tst"
	eval "g_d_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.g.d"
	eval "us_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.us"
	# [[ -z "$1" ]] && {
	#     # snp "out_err"
	#     echo -e "${ECHO_RET1}in file://$fn_nm_{fn_nm} , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
	#     return 1
	# }

	#--~001_help~
	[[ "$1" == "-h" ]] && {
		echo -e "
        this -h for <${FUNCNAME[0]}> ::
        doing :: example if infs for gig tst_result is :: [. g.pr dr_res res.fl]
			\$1 - dr_res
			\$2 - res.fl
			\$3 - 
            exa use ::
            far use ::
        "
		return 0
	}

	
	# [[ "$1" == "-h" ]] && {
	#	echo -e "
    #     this -h for <${FUNCNAME[0]}> ::
    #     doingX :: 
	# 		\$1 - 
	# 		\$2 - 
	# 		\$3 - 
    #         exa use ::
    #         far use ::
    #     "
	# 	return 0
	# }

	#--{{001_key}}
	
		#X
	#-- ~001_val_ind~
	#* value indicator
	eval "local arg_1_fn_${rnd}=\"\$1\""
	eval "echo \\\$1=\$arg_1_fn_${rnd}"
	eval "local arg_2_fn_${rnd}=\"\$2\""
	eval "echo \\\$2=\$arg_2_fn_${rnd}"
	eval "local arg_3_fn_${rnd}=\"\$3\""
	eval "echo \\\$3=\$arg_3_fn_${rnd}"
	eval "local arg_4_fn_${rnd}=\"\$4\""
	eval "echo \\\$4=\$arg_4_fn_${rnd}"
	eval "local arg_5_fn_${rnd}=\"\$5\""
	eval "echo \\\$5=\$arg_5_fn_${rnd}"

	eval "echo \"fl_pth_fn=\$fl_pth_fn_${rnd}\""
	eval "echo \"dr_pth_fn=\$dr_pth_fn_${rnd}\""
	eval "echo \"fl_nm_fn=\$fl_nm_fn_${rnd}\""
	eval "echo \"prnt1_dr_pth_fn=\$prnt1_dr_pth_fn_${rnd}\""
	eval "echo \"prnt2_dr_pth_fn=\$prnt2_dr_pth_fn_${rnd}\""

	#* indicate with ${rnd}
	# eval "echo \\\$prnt_dr_${rnd}=\$prnt_dr_${rnd}"
	#-- {{002_val_ind}}
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

	#-- ~001_stn_env~
	#* STANDART ENV THAT FILE
	# arg1 ::
	# $(eval "echo \$arg_1_fn_${rnd}")
	# arg2 ::
	# $(eval "echo \$arg_2_fn_${rnd}")
	# arg3 ::
	# $(eval "echo \$arg_3_fn_${rnd}")
	# arg4 ::
	# $(eval "echo \$arg_4_fn_${rnd}")
	# arg5 ::
	# $(eval "echo \$arg_5_fn_${rnd}")
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
	#-- {{002_stn_env}}

	#-- ~001_use_l~
	# l_02_fs2f :: ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: reciver_string: $2 inserter_string: $1 [@ - empty string] in reciver_result_file: $3
	# l_02_d2e :: prevent stl_dir (_) stdout stl_name [,with $2 .ext] - like 'ls $1' - if in root_dir mst $1=@
	# l_01_prs_f :: pars $1 path - stdout part
	# 	path=/the/path/_foo.bar.ext.txt      
	# 	$(l_01_prs_f -d /the/path/_foo.bar.ext.txt)   : /the/path 
	# 	$(l_01_prs_f -ne /the/path/_foo.bar.ext.txt)  : _foo.bar.ext.txt   
	# 	$(l_01_prs_f -n /the/path/_foo.bar.ext.txt)   : _foo.bar.ext   
	# 	$(l_01_prs_f -n2 /the/path/_foo.bar.ext.txt)  : _foo.bar   
	# 	$(l_01_prs_f -e /the/path/_foo.bar.ext.txt)   : txt   
	# 	$(l_01_prs_f -e2 /the/path/_foo.bar.ext.txt)  : ext 
	# 	$(l_01_prs_f -pr /the/path/_foo.bar.ext.txt)  : _   
	# 	$(l_01_prs_f -po /the/path/_foo.bar.ext.txt)  : foo.bar.ext.txt  
	# l_01_is_yes :: y if_err
	# fns_bsh_001_als_gig_fn_sh :: gig in \$1 dr \$2 fn[with .ext] use ~/fns_bsh/.d/.p.ax/.p005.d (like .p003.d) [,\$3 cmn.d [,\$4 dom.d]] 
	# fns_bsh_001_als_gig_fl_sh :: gig in \$1 dr \$2 fl[with .ext] use ~/fns_bsh/.d/.p.ax/.p006.d (like .p004.d) [,\$3 cmn.d [,\$4 dom.d]]
	# lfoe_path_to_var ::  insert pth \${HOME} into string '${HOME}'
	# lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml
	# {{002_use_l}}
	l_00_echo_code "body :: <${FUNCNAME[0]}>"

	#-- ~001_body~
	l_00_echo_code "rm $(eval "echo \$dr_pth_fn_${rnd}")/res.fl"

	rm $(eval "echo \$dr_pth_fn_${rnd}")/res.fl
# did res.fl as init 
# prnt1_dr_pth_fn=~/fns_bsh/.d/.p.ax/.p009.d
# ~/fns_bsh/.d/.p.ax/.p009.d/.dta/.p001/fl_nm.tml

 	cp $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/.dta/.p001/fl_nm.tml $(eval "echo \$dr_pth_fn_${rnd}")/res.fl


	l_00_echo_info "example if infs for gig tst_result is :: [. g.pr dr_res res.fl]"
	#  /home/st/fns_bsh/.d/.p.ax/.p009.d/.dta/.p001/fl_nm.tml
	l_00_echo_code ". $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/g.pr $(eval "echo \$dr_pth_fn_${rnd}") res.fl"
	. $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/g.pr $(eval "echo \$dr_pth_fn_${rnd}") res.fl
	
    #-- {{002_body}}

	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

    return 0

}
#-- ~001_after~
fn_1759_1199 $@

# {{002_after}}

#? fn_1759_1199 $@
