#!/bin/bash

if [[ "${line:0:1}" != "#" ]]; then
	eval "echo $line"
fi
