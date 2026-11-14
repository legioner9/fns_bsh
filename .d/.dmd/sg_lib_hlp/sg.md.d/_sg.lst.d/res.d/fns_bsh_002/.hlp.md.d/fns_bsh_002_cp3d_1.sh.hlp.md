fns_bsh_002_cp3d_1
			- DFN:: CPE=fl in {IEN} as ([\*.cp]) with path (fl|dr)
            		{IEN<CPE} - {IEN} with diff accoding CPE
			- INI:: {IEN} dr with CPE , {REN}={IEN<CPE}
			- ACT:: {REN}={IEN<CPE}
			- ARG:: \$1 {IEN} dr with CPE ,\$2 {REN} is copy {IEN} with diff
			- FLW:: <[[fbl4]]gig_bbcp {IEN}\\    
						for all {CPE} in *{IEN}/*.cp
							<[[fbl2]]f2fs_1 {CPE} *{CPE}/.tmp/{&CPE}.tmp
							<[[fbl4]]bbcp_rm {CPE}
							cp *{CPE}/.tmp/{&CPE}.tmp/. *{CPE}

#@ fns_bsh_002_cp3d_1 :: doing :: {IEN1} with .cp, {REN}={IEN1 with cp fls}
