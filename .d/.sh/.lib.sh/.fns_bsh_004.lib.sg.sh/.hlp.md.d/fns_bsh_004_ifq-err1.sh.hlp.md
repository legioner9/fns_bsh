fns_bsh_004_ifq-err1
			- OVR:: rm with ques
				- DFN::
				- INI::{IEN} - (fl|dr)
				- ACT::(pr){IEN}
				- ARG::\$1 = {IEN}
				- FLW:: ifqes \"?DO::rm {IEN}\"
						- [yes] - (rm {IEN})
						- [no] - (err1)

#@ fns_bsh_004_ifq-err1 :: doing :: \{IEN\}=\(fl|\dr\) , REN=\(pr\)\{IEN\}
