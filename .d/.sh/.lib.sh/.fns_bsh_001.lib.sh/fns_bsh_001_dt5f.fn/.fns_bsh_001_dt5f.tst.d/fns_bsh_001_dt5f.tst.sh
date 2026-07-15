#!/bin/bash

# gig init dr for fns_bsh_001_dt5f :: cp p_dr from  : .p001.d
. ~/fns_bsh/.d/.p.ax/.p001.d/cp_this.sh \
	~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_001.lib.sh/fns_bsh_001_dt5f.fn/.fns_bsh_001_dt5f.tst.d/fns_bsh_001_dt5f.p001 \
	fns_bsh_001_dt5f.p001

# in ~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_001.lib.tst.d/fns_bsh_001_dt5f.tst.d/fns_bsh_001_dt5f.p001/fl_nm.arg.sh ::
# fns_bsh_001_dt5f ~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_001.lib.tst.d/fns_bsh_001_dt5f.tst.d/fns_bsh_001_dt5f.p001 \
	# ~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_001.lib.tst.d/fns_bsh_001_dt5f.tst.d/.tst/dst 

#.. l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f

l_02_fs2f ~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_001.lib.sh/fns_bsh_001_dt5f.fn/.fns_bsh_001_dt5f.dta.d/.tml/fl_nm.arg.sh.tml \
	{{fl_nm.arg}} \
	~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_001.lib.sh/fns_bsh_001_dt5f.fn/.fns_bsh_001_dt5f.tst.d/fns_bsh_001_dt5f.p001/fl_nm.arg.sh

. ~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_001.lib.sh/fns_bsh_001_dt5f.fn/.fns_bsh_001_dt5f.tst.d/fns_bsh_001_dt5f.p001/fl_nm.arg.sh

l_00_echo_warn "REMOVE COMMENTS{#..} in ~/fns_bsh/.d/.sh/.lib.sh/.fns_bsh_001.lib.tst.d/fns_bsh_001_dt5f.tst.d/fns_bsh_001_dt5f.p001/fl_nm.arg.sh "
