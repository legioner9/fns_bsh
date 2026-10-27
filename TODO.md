# do fns_bsh_002_f2fs_1

## add \$2 to fns_bsh_004_f2fs -> fns_bsh_002_f2fs_1
- add :
    - [+]if REN_EXST 
    - in IEN add : pth:pref_pth:dicr_pref_pth wh dicr_pref_pth>pth/pref_pth/_d.d

### fns_bsh_004_gig_bldr
- OVR::
    - INI:: IEN is (f|dr)
    - ACT:: {REN} = >{IEN}
    - ARG:: \$1 = {IEN} \$2 = {par:(-f|-i|'')}
    - FLW:: ( if [par=-f] & [REN_EXST] thn [rm REN] | if [par=-i] & [REN_EXST] thn [ask=?{rm REN}] ( if ['y'] thn [rm REN] els [err1] ) | if [par=''] & [REN_EXST] thn [err1] ) 

### fns_bsh_004_s2bllg
    - INI:: IEN1 is EN, IEN2 is STRING
    - ACT:: "IEN2" > >>{IEN1}

