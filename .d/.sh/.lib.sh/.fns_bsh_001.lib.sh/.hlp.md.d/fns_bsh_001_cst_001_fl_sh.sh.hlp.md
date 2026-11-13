fns_bsh_001_cst_001_fl_sh
			- OVR::
				- DFN::?{CSH}={IEN:*.c_sh} - fl {IEN}/*/*.csh
				- INI::?IEN - dr with *.c_sh, REN - IEN with c_sh->cp
				- ACT::?{IEN} -> {REN}=(pr){IEN}
				- ARG::?\$1 = {IEN} 
				- FLW::?
					-? (source {CSH} *{CSH}) -> *{CSH}/{FLS:[{CSH^}.cp,[*.*]]}
					-? [[fbl4]]bbcp_rm {CSH}
				- NTE::
					- 

#@ fns_bsh_001_cst_001_fl_sh :: doing :: gig fl.sh by flw::001 \[use ~/fns_bsh/.d/.p.ax/.p003.d\]
