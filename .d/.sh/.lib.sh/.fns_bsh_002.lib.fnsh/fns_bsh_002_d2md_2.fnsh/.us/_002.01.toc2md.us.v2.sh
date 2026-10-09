# from:: ~/fns_bsh/.d/.p.ax/.p007.d/.dta/.pXXX.dtml/.us/001.us.sh
l_00_echo_info "that :: 002.01.toc2md.us.sh"
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

#! gig_var
#fns_bsh_002_d2md_2_dr_dta

eval "flow_1_${rnd}=dr"
# $(eval "echo \$flow_1_${rnd}")

if [[ $(eval "echo \$flow_1_${rnd}") == "dr" ]]; then

	fns_bsh_002_d2md_2_toc2md() {
		l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"

		# $fns_bsh_002_d2md_2_dr_dta/chpt.md
		# $fns_bsh_002_d2md_2_dr_dta/body.md
		#! $fns_bsh_002_d2md_2_dr_dta/body_toc.md result
		local pnt=
		local anc=
		local str=
		local rnd_1=

		IFS=$'\n'
		for str in $(<$fns_bsh_002_d2md_2_dr_dta/chpt.md); do
			echo "$str"
			#  - <a href=#35a6b9d026864bd79ab8bfd21541e3fa> Local repo opuses</a>
			#<a id="16d01bbb8a3048f18d8665782e885627"></a>
			rnd_1=$(tr -dc 0-9A-Za-z </dev/urandom | head -c 32)
			pnt="- <a href=#$rnd_1>$str</a>"
			anc="<a id=\"$rnd_1\"></a>"
			#sed '/^b/i ascsdc' init/init.fl > res.fl

			# l_00_echo_info "\$str=$str"
			# l_00_echo_info "\$anc=$anc"
			# l_00_echo_info "\$pnt=$pnt"

			eval "sed -i '/$str/i $anc' $fns_bsh_002_d2md_2_dr_dta/body_toc.md"
			eval "sed -i '/ETOC/i $pnt' $fns_bsh_002_d2md_2_dr_dta/body_toc.md"

			# read -p "check variables and file://$fns_bsh_002_d2md_2_dr_dta/body_toc.md"

		done
		IFS=

		lfoe_path_to_var $fns_bsh_002_d2md_2_dr_dta/body_toc.md
		read -p fns_bsh_002_d2md_2_toc2md
		l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"

	}

fi

#-- {{002_001_us_sh}}
