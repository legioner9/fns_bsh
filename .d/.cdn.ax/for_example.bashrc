#!/bin/bash

: >"$HOME"/null

cd "$HOME"

fn_43564321dcsac() {

	# local rpo_lib_rc_arr_12weqwfe5462=(aer_foe fns_bsh)
	local rpo_lib_rc_arr_12weqwfe5462=(aer_foe)
	# local rpo_lib_rc_arr_12weqwfe5462=(fns_bsh)

	local item_23rfvserfec=

	for item_23rfvserfec in ${rpo_lib_rc_arr_12weqwfe5462[@]}; do

		local fn_nm_fwaeg231=$HOME/${item_23rfvserfec}/.d/.repo.d/.repo.rc

		[[ -f ${fn_nm_fwaeg231} ]] && {
			. "${fn_nm_fwaeg231}" >$HOME/null || {
				echo -e "in file://${fn_nm_fwaeg231} , line=${LINENO} :: EXEC : '. ${fn_nm_fwaeg231}', 'RESUME :: ${item_23rfvserfec} .repo.rc FAIL' return 1${NRM}" >&2
				return 1
			}
		}

	done

}

fn_43564321dcsac @
