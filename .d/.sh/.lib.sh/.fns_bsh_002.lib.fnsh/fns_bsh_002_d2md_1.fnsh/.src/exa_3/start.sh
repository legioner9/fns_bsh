#!/bin/bash
cd ~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_002.lib.fnsh/fns_bsh_002_d2md_1.fnsh/.src/exa_3

fn_f() {
	if [[ -n $1 ]]; then
		while IFS= read -r line; do
			echo "Line: $line"
			# done < <(grep -v '^ *#' <file.f)
		done < <(grep -v '*' <"$1")
	fi
	if [[ -z $1 ]]; then
		while IFS= read -r line; do
			echo "Line: $line"
			# done < <(grep -v '^ *#' <file.f)
		done
	fi
	# done < <(grep -v '^#' <file.f) # without comments
	# done < file.f # without comments
}

fn_f < <(grep -v '*' <file.f)
fn_f file.f
