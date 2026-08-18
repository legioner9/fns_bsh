#!/bin/bash

m_h() {
	echo -e "	m.lib.sh (all) ::
m_h 	:: echo help
m_puwd 	:: pushd \$(pwd)
m_pod 	:: popd \$1 
m_drs 	:: dirs -v
"
}

m_puwd() {
	[[ "-h" == "$1" ]] && {
		echo "this_fn_nm :: <${FUNCNAME[0]}>"
		m_h
		return 0
	}
	pushd $(pwd)
}

m_pod() {
	[[ "-h" == "$1" ]] && {
		echo "this_fn_nm :: <${FUNCNAME[0]}>"
		m_h
		return 0
	}
	popd "$1"
}

m_drs() {
	[[ "-h" == "$1" ]] && {
		echo "this_fn_nm :: <${FUNCNAME[0]}>"
		m_h
		return 0
	}
	dirs -v
}

# https://vkvideo.ru/video-229007963_456239764
