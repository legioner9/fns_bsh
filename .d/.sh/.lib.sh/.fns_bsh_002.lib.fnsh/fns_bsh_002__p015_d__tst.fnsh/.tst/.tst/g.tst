#!/bin/bash
# from:: ~/fns_bsh/.d/.p.ax/.p006.d/.p001/fl_nm.tml

fn_10937_11525(){

	l_00_echo_code "start :: <${FUNCNAME[0]}>"

    local fl_pth_fn_10937_11525="${HOME}/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002__p015_d__tst.fnsh/.tst/.tst/g.tst"
    local dr_pth_fn_10937_11525=$(dirname ${HOME}/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002__p015_d__tst.fnsh/.tst/.tst/g.tst)
    local fl_nm_fn_10937_11525=$(basename ${HOME}/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002__p015_d__tst.fnsh/.tst/.tst/g.tst)
    local rnd=10937_11525

	#-- ~001_genv~
	# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d/001_genv.tml
	eval "local prnt1_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/..)"
	eval "local prnt2_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/../..)"
	eval "fn_nm_${rnd}=\$(l_01_prs_f -n \$fl_nm_fn_${rnd})"

	#-- {{002_genv}}
		
	eval "fl_tst_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.tst/g.tst"
	eval "g_d_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.g.d"
	eval "us_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.us"
	# [[ -z "$1" ]] && {
	#     # snp "out_err"
	#     echo -e "${ECHO_RET1}in file://${HOME}/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002__p015_d__tst.fnsh/.tst/.tst/g.tst , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
	#     return 1
	# }

	#--~001_help~
	# from:: ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/003.dom.tml.d/001_help.tml
	# first:: for .p007.d g.tst
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
		l_00_echo_code "exit :: <${FUNCNAME[0]}>"
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

	#-- ~001_val_ind~
	# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d/001_val_ind.tml
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
	#! ptr_path
	# eval "local ptr_path_1=\"$arg_1_fn_${rnd}\""
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
	# echo "\$ptr_path_1=$ptr_path_1"
	# eval "arg_1_fn_${rnd}=\$ptr_path_1"

	# [[ -d "$2" ]] || {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://${HOME}/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002__p015_d__tst.fnsh/.tst/.tst/g.tst , line=${LINENO} :: ARG_2_NOT_DR is ..., return 1${NRM}" >&2
	# 	return 1
	# }	

	#-- ~001_stn_env~
	# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d/001_stn_env.tml
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
	# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/001.cmn.tml.d/001_use_l.tml
	# l_02_fs2f :: ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: $1 reciver_string, $2 inserter_string[@ - empty string] in $3 reciver_result_file 
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
	# from:: ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/003.dom.tml.d/001_body.tml
	# first:: for .p007.d g.tst
	#* local flw="fl" #if res is fl
	local flw="dr" #if res is dr

	if [[ $flw == "fl" ]]; then
		l_00_echo_code "rm $(eval "echo \$dr_pth_fn_${rnd}")/res.fl"

		rm $(eval "echo \$dr_pth_fn_${rnd}")/res.fl

		l_00_echo_info "example if infs for gig tst_result is :: [. g.pr dr_res res.fl]"
		l_00_echo_code ". $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/g.pr $(eval "echo \$dr_pth_fn_${rnd}") res.fl"
		. $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/g.pr $(eval "echo \$dr_pth_fn_${rnd}") res.fl

	fi

	if [[ $flw == "dr" ]]; then
		l_00_echo_code "rm $(eval "echo \$dr_pth_fn_${rnd}")/g.tst.d/res.d"

		rm -r $(eval "echo \$dr_pth_fn_${rnd}")/g.tst.d/res.d

		l_00_echo_info "example if infs for gig tst_result is :: [. g.pr prn_dr res.dr]"
		l_00_echo_code ". $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/g.pr $(eval "echo \$dr_pth_fn_${rnd}")/g.tst.d res.d"
		. $(eval "echo \$prnt1_dr_pth_fn_${rnd}")/g.pr $(eval "echo \$dr_pth_fn_${rnd}")/g.tst.d res.d

	fi
	
    #-- {{002_body}}

	l_00_echo_code "exit :: <${FUNCNAME[0]}>"

    return 0

}

#-- ~001_after~
# from:: ~/fns_bsh/.d/.p.ax/.p006.d/.p001/fl_nm.tml.d/001_after.tml
fn_10937_11525 $@

# {{002_after}}

#? fn_10937_11525 $@
