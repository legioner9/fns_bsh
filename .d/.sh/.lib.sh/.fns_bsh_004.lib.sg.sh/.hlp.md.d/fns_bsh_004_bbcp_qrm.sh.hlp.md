fns_bsh_004_bbcp_qrm
			- DFN:: {IEN~} (tmp_link_ST_DSL: {>e} = {*e}/_{&e}.d, {e~} = {>e}/{&e}~)
			- INI:: {IEN} (dr|fl)
			- ACT:: (<[[fbl4]]gig_bbcp {IEN}\>) -a (ques rm {IEN})
			- ARG:: \$1 {IEN} 
			- FLW:: ifques [DO_RM_IEN] thn <[[fbl4]]bbcp {IEN}> els \<[[err1]]> fi
			
 			OVR::
				- DFN::?\"IEN:ln\" - line of IEN
				- INI::?IEN - fl with pth, REN - dr after cp
				- ACT::?{IEN} -> {REN}
				- ARG::?\$1 = {IEN} \$2 = {REN}
				- FLW::?
					 -? (-){REN}
					 -? DFN::\"IEN:ln\" == \"IEN:pth\"[:\"IEN:add\"[^\"IEN:str\"]]
					 -? cp {\"IEN:pth\"} {REN}/\"IEN:add\"
				- NTE::
					-? (. start.sh {arg.MD}) gig {arg.MD} from {*.lst}

#@ fns_bsh_004_bbcp_qrm :: doing :: {IEN1} dr -o fl rm with fbl4_bbcp
