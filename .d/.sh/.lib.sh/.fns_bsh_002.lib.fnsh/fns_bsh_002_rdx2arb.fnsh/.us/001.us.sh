# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 001.us.sh"
l_00_echo_ques "... DFN:: fn()...| BODY::..."

# ~001_001_us_sh~
# from:: ~/fns_bsh/.d/.p.ax/.cmn/.dom.tml.d/0012.dom.tml.d/001_001_us_sh.tml
# first:: for .p015.d gig 001.us.sh

# check exist $(eval "echo \$arg_1_fn_${rnd}")/$(eval "echo \$arg_2_fn_${rnd}")
echo -e " arg_flow ::
if src_dir :: $(eval "echo \$dr_pth_fn_${rnd}")/.dta/cp_to_dst.d
\$1 root_dr \$2 ::
dr - result dr
fl - result fl
"
# arg1 ::
# $(eval "echo \$arg_1_fn_${rnd}")
# arg2 ::
# $(eval "echo \$arg_2_fn_${rnd}")

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

# fns_bsh_006_gv :: gig_value :: \$1->rnd \$2->nm \$3->vol :: eval "${2}_${1}=${3}"
# fns_bsh_006_vv2e :: volume_value2echo::\$1->rnd \$2->nm :: eval "echo \$${2}_${1}"
# fns_bsh_006_nv2e :: name_value2echo::\$1->rnd \$2->nm :: eval "echo ${2}_${1}"
# fns_bsh_006_info_v :: l_00_echo_info::\$1->rnd \$2->nm ::
#	l_00_echo_info "\$$(fns_bsh_006_nv2e ${1} ${2})=$(fns_bsh_006_vv2e ${1} ${2})"
# fns_bsh_006_warn_v :: l_00_echo_warn::\$1->rnd \$2->nm ::
#	l_00_echo_warn "\$$(fns_bsh_006_nv2e ${1} ${2})=$(fns_bsh_006_vv2e ${1} ${2})"
# fns_bsh_006_err_v :: l_00_echo_err::\$1->rnd \$2->nm ::
#	l_00_echo_err "\$$(fns_bsh_006_nv2e ${1} ${2})=$(fns_bsh_006_vv2e ${1} ${2})"

eval "flow_1_${rnd}=dr"
# $(eval "echo \$flow_1_${rnd}")

fns_bsh_006_warn_v ${rnd} fn_nm # fns_bsh_002_f2fs_1

# echo "$(fns_bsh_006_vv2e ${rnd} fn_nm) '$@'"
#.. bllog to arg
# fns_bsh_004_s2bllg "$(eval "echo \$arg_1_fn_${rnd}")" "$(fns_bsh_006_vv2e ${rnd} fn_nm) $(eval "echo \$arg_1_fn_${rnd}") $(eval "echo \$arg_2_fn_${rnd}")"
# fns_bsh_004_s2bllg "$(eval "echo \$arg_2_fn_${rnd}")" "$(fns_bsh_006_vv2e ${rnd} fn_nm) $(eval "echo \$arg_1_fn_${rnd}") $(eval "echo \$arg_2_fn_${rnd}")"
# fns_bsh_004_s2bllg "$(eval "echo \$arg_3_fn_${rnd}")" "$(fns_bsh_006_vv2e ${rnd} fn_nm) $(eval "echo \$arg_1_fn_${rnd}") $(eval "echo \$arg_2_fn_${rnd}" "echo \$arg_1_fn_${rnd}") $(eval "echo \$arg_3_fn_${rnd}" "echo \$arg_1_fn_${rnd}") $(eval "echo \$arg_4_fn_${rnd}")"

fns_bsh_004_s2bllg "$(eval "echo \$arg_3_fn_${rnd}")" \
	"$(fns_bsh_006_vv2e ${rnd} fn_nm) \
$(eval "echo \$arg_1_fn_${rnd}") \
$(eval "echo \$arg_2_fn_${rnd}") \
$(eval "echo \$arg_3_fn_${rnd}") \
$(eval "echo \$arg_4_fn_${rnd}") \
"
if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then
	:
	# fns_bsh_002_xx() {
	:
	# l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"
	# [[ -z "$1" ]] && {
	# 	# snp "out_err"
	# 	l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
	# 	echo -e "${ECHO_RET1} in $(eval "echo \$dr_pth_fn_${rnd}")/.us/yy.us.sh , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }
	# l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
	# return 0
	# }
	[ -d $(eval "echo \$arg_3_fn_${rnd}") ] || {
		l_00_echo_code "mkdir "$(eval "echo \$arg_3_fn_${rnd}")""
		mkdir "$(eval "echo \$arg_3_fn_${rnd}")" || {
			l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
			echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'mkdir "$(eval "echo \$arg_3_fn_${rnd}")"', return 1${NRM}" >&2
			return 1
		}
	}
	local item=
	local item2=
	local item2_arr=()
	local arb_nn_dr=
	local f1f_nn_fl=
	local f1f_nm_lst=
	local dr_in_res=
	for item in $(fns_bsh_002_rdx2arb_itr_rdx); do
		l_00_echo_info "\$item=$item"
		for item2 in $(l_02_f2e "$item/_vis.d/arb.lst"); do
			# echo ${HOME}/cdsa/cawe | eval "sed 's|${HOME}|\${HOME}|'"
			l_00_echo_info "\$item2=$item2"

			IFS=':' read -r -a item2_arr <<<"$item2"
			arb_nn_dr=${item2_arr[0]}
			f1f_nn_fl=${item2_arr[1]}

			l_00_echo_info "\$arb_nn_dr=$arb_nn_dr" # nn fl lqt.lst.d/arb.lst.d/[nn].[].ram.lst - define dr_in_res
			l_00_echo_info "\$f1f_nn_fl=$f1f_nn_fl" # nn in fl lqt.lst.d/arb.lst.d/[nn].[].ram.lst - define fl_in_dr_in_res

			f1f_nm_lst=$(eval "echo \$arg_2_fn_${rnd}")/arb.lst.d/$(fns_bsh_002_rdx2arb_arb_nn2arb_nm "$arb_nn_dr")

			file $f1f_nm_lst

			dr_in_res="$(l_01_prs_f -n2 "$f1f_nm_lst")"
			l_00_echo_info "\$dr_in_res=$dr_in_res"
			# sdr_in_res :: subdir
			fns_bsh_002_rdx2arb_mk_dr_in_res ${dr_in_res}

			fns_bsh_002_rdx2arb_str_in_ram_lst2e ${f1f_nm_lst} ${f1f_nn_fl}

		done
	done

fi

#-- {{002_001_us_sh}}
