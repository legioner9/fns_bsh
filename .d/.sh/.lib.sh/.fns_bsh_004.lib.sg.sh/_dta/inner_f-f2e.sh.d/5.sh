#!/bin/bash

# local str_x=${arg_2//'\'/'\\'}

if [[ "${line:0:1}" != "#" ]]; then
	eval "echo $line" | eval "sed 's|${HOME}|\${HOME}|'"
fi
