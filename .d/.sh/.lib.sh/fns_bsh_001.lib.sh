#!/bin/bash

l_01_c_up ~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_001.lib.sh

# fns_bsh_001_tst_fn() {
# 	:
# }

# fns_bsh_001_dt5f() {
# 	[[ "$1" != "-h" ]] || {
# 		echo -e "
#         fns_bsh_001_dt5f :: create file from [path_p]/[nm_fl.ext].p1
# 			\$1 :: [path_p]/[nm_fl.ext].p1
# 				nm_fl__ext gig nm_fl.ext (__ is .)

#         \$1 dir_rel_pth for file [ or @ if in_gig_dir ]
#         \$2 file name with .sh
#         [ optional :: \$3 file for insert into {{body}} :: [, contane var_{fn_nm}] ]
#         "
# 		return 0
# 	}

# 	if [[ -z "$2" ]]; then
# 		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} ::  ARG2_NOT_DEFINE, return 1${NRM}" >&2
# 		return 1
# 	fi

# 	#! ptr_path_N
# 	local ptr_path_1="$1"
# 	ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

# 	local arg1="$ptr_path_1"
# 	local arg2="$2"

# 	l_00_echo_info "\$arg1=$arg1"
# 	l_00_echo_info "\$arg2=$arg2"

# 	if [[ -n "$3" ]]; then
# 		local ptr_path_3="$3"
# 		ptr_path_3="$(l_01_abs_path "$(pwd)" "ptr_path_3")"
# 		if [[ -f $ptr_path_3 ]]; then
# 			local arg3="$ptr_path_3"
# 			l_00_echo_info "\$arg3=$arg3"
# 		else
# 			echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} :: ARG3_NOT_FILE ::  EXEC : '[[ ! -f "$ptr_path_3" ]]', return 1${NRM}" >&2
# 			return 1
# 		fi

# 	fi

# 	[[ -d "$arg1" ]] || {
# 		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  NOT_DIR : 'arg1=$arg1' :: root dir for .sh file , return 1${NRM}" >&2
# 		return 1
# 	}

# 	[[ -n "$arg2" ]] || {
# 		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  IS_EMPTY : 'arg2=$arg2' file name , return 1${NRM}" >&2
# 		return 1
# 	}

# 	local tml_pth=${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml
# 	local fl_nm="$arg1"/"$arg2"
# 	local rnd=${RANDOM}_${RANDOM}
# 	local fn_nm="fn_${rnd}"

# 	# l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
# 	# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3

# 	if [[ ! -f "${fl_nm}" ]]; then
# 		l_00_echo_info "cp $tml_pth $fn_nm"
# 		cp "$tml_pth" "$fl_nm"

# 		l_00_echo_code "l_02_s2f {{fl_nm}} ${fl_nm} ${fl_nm}"
# 		l_02_s2f "{{fl_nm}}" "${fl_nm}" "${fl_nm}"

# 		if [[ -n $arg3 ]]; then
# 			l_02_fs2f "$arg3" "{{body}}" "${fl_nm}"
# 			# in code contane "{{body}}" - not replace!
# 			# l_02_s2f "{{body}}" "[[body]]" "${fl_nm}"
# 		fi

# 		l_00_echo_code "cp $tml_pth $fn_nm"
# 		l_02_s2f "{{fn_nm}}" "${fn_nm}" "${fl_nm}"

# 		l_02_s2f "{{rnd}}" "${rnd}" "${fl_nm}"
# 	else
# 		echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  FILE_EXIST : '$dr_nm', return 1${NRM}" >&2
# 		return 1
# 	fi

# 	lfoe_path_to_var "${fl_nm}"

# 	return 0

# }
