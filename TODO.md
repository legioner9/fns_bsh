# do fns_bsh_002_f2fs_1

## add \$2 to fns_bsh_004_f2fs -> fns_bsh_002_f2fs_1
- add :
    - [+]if REN_EXST 
    - in IEN add : pth:pref_pth:dicr_pref_pth wh dicr_pref_pth>pth/pref_pth/_d.d
> fns_bsh_004==[[fbl4]]
### fns_bsh_004_gig_bldr == [[fbl4]]gig_bldr
- OVR::
    - INI:: IEN is (f|dr)
    - ACT:: {REN} = >{IEN}
    - ARG:: \$1 = {IEN} \$2 = {par[fns_bsh_004_gig_bldr]:(-f|-i|-c|'')}
    - FLW:: ( if [par=-f] & [REN_EXST] thn [rm REN] | if [par=-i] & [REN_EXST] thn [ask=?{rm REN}] ( if ['y'] thn [rm REN] els [err1] ) | if [par='-c'] & [REN_EXST] thn [err1] | if [par=''] & [REN_EXST] thn [ret0] ) 

> \>{EN} = *{EN}/_&{EN}.d
            LOG_FL [bllg]:
                >{EN}:lg = >{EN}/&{EN}.lg.f

### fns_bsh_004_s2bllg
- OVR::
    - INI:: IEN1 is EN, IEN2 is STRING
    - ACT:: echo \"IEN2\" > [>{IEN1}:lg]
    - ARG:: \$1 = {IEN1} \$2 = \"IEN2\" \$3 = {par[fns_bsh_004_gig_bldr]:(-f|-i|-c|'')}
    - FLW:: [[l4]]gig_bldr {IEN1}, echo \"IEN2\" > [>{IEN1}:lg]

### [[fbl4]]bldr2e
- OVR::
    - INI:: IEN1 is EN
    - ACT:: echo \">{IEN}\"
    - ARG:: \$1 = {IEN1}
    - FLW:: echo \">{IEN}\"

### [[fbl4]]bllg2e
- OVR::
    - INI:: IEN1 is EN
    - ACT:: echo \">{EN}:lg\"
    - ARG:: \$1 = {IEN1}
    - FLW:: echo \">{EN}:lg\"