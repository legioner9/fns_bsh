#!/bin/bash

g_v() { # $1->rnd $2->nm $3->vol

	[[ "$1" == "-h" ]] && {
		l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'" #exit
		echo -e "	\$1->rnd \$2->nm \$3->vol
	g_v()::eval \${2}_\${1}=\${3}"
		l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'" #exit
		return 0
	}
	:
	[[ -n "$3" ]] || {
		g_v -h
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : '[[ -z "$3" ]]', return 1${NRM}" >&2
		return 1
	}
	eval "${2}_${1}=${3}"

}

e_v() { # $1->rnd $2->nm
	eval "echo \$${2}_${1}"
}

n_v() { # $1->rnd $2->nm
	eval "echo ${2}_${1}"
}

i_v() { # $1->rnd $2->nm
	l_00_echo_info "\$$(n_v ${1} ${2})=$(e_v ${1} ${2})"
}
