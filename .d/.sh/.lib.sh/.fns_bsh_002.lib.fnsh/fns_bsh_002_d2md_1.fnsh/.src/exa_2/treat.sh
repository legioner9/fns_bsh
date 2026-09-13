#!/bin/bash
.src/exa_2/d.init/d.in/fl3.f
.src/exa_2/d.out/fl2.f
exa_2=/home/st/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_1.fnsh/.src/exa_2
fl_md=$exa_2/d.init/1.md
fl1=$exa_2/d.init/fl1.f
fl3=$exa_2/d.init/d.in/fl3.f
fl2=$exa_2/d.out/fl2.f
# realpath --relative-to=$(dirname $fl1) $(dirname $fl_md) # .
# realpath --relative-to=1.md fl1.f
# realpath --relative-to=$exa_2 $exa_2

fn_rel() {
	# $1 file
	# $2 file_md
	local pre=$(realpath --relative-to="$(dirname "$2")" "$(dirname "$1")")
	echo pre="$pre"
	local res="$pre"/"$(basename "$1")"
	echo res="$res"
}

l_00_echo_code "fn_rel $fl1 $fl_md"
fn_rel $fl1 $fl_md

l_00_echo_code "fn_rel $fl2 $fl_md"
fn_rel $fl2 $fl_md

l_00_echo_code "fn_rel $fl3 $fl_md"
fn_rel $fl3 $fl_md