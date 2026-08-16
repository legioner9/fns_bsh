# [[pre_make]]
# insert from ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml/pre_make.tml
# Trg: Dpn(Trg or Fls)
# 	Cmnd	
# var := value
# $@ 								:: $@ - target
# $^								:: $^ - depend
# %									:: %  - common part
# $(arr[a.o, b.o], ...): %.c: %o	:: arr - iterator [a.o: a.c, b.o: b.c, ...]
# example_1 : instead
# a.o: a.c
# 	$(CC) -c $^ -o $@
# b.o: b.c
# 	$(CC) -c $^ -o $@ 
# all.o: all.c
# 	$(CC) -c $^ -o $@
# that code:
# $(obj): %.o: %.c
# 	$(CC) -c $^ -o $@

# wildcard 	:: for empty pattern $(wildcard *.w)

# .PHONY: - define only trg

# EXAMPLE pr in PR_PTH with lib in PR_PTH/include ::

#PTH_L1 = PR_PTH/include
#PTH_M1 = PR_PTH
## CC = gcc -I include
#CC = gcc -I  $(PTH_L1)

## src_fl := $(wildcard *.c)
#obj_fl_incl := $(patsubst %.c,%.o,$(wildcard $(PTH_L1)/*.c))
#obj_fl_main := $(patsubst %.c,%.o,$(wildcard $(PTH_M1)/*.c))

#.PHONY: hello

#hello: $(obj_fl_main) $(obj_fl_incl)
#	$(CC) $^ -o hello.cxe

#$(filter %.o,$(obj_fl_incl)): %.o: %.c
#	$(CC) -c $^ -o $@

#$(filter %.o,$(obj_fl_main)): %.o: %.c
#	$(CC) -c $^ -o $@
		
### $(filter %.result,$(obj_fl)): %.result: %.raw
# 	$(CC) -c $^ -o $@

#clean:
#	rm -f $(obj_fl_incl) all.o hello.cxe

# [[001_body]]
# from ~/fns_bsh/.d/.p.ax/.p010.d/.dta/.pr.dta/makefile.set.tml.d/001_body.tml

PTH_L1 = ${HOME}/fns_bsh/.d/.p.ax/.p010.d/.tst/g.tst.d/res.d/include
PTH_M1 = ${HOME}/fns_bsh/.d/.p.ax/.p010.d/.tst/g.tst.d/res.d
# CC = gcc -I include
CC = gcc -I  $(PTH_L1)

# src_fl := $(wildcard *.c)
obj_fl_incl := $(patsubst %.c,%.o,$(wildcard $(PTH_L1)/*.c))
obj_fl_main := $(patsubst %.c,%.o,$(wildcard $(PTH_M1)/*.c))

.PHONY: hello

hello: $(obj_fl_main) $(obj_fl_incl)
	$(CC) $^ -o hello.cxe

$(filter %.o,$(obj_fl_incl)): %.o: %.c
	$(CC) -c $^ -o $@

$(filter %.o,$(obj_fl_main)): %.o: %.c
	$(CC) -c $^ -o $@
		
# $(filter %.result,$(obj_fl)): %.result: %.raw
# 	$(CC) -c $^ -o $@

clean:
	rm -f $(obj_fl_incl) all.o hello.cxe
	
# stck :: l_02_fs2f ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml/pre_make.tml 	[[pre_make]] 	${HOME}/fns_bsh/.d/.p.ax/.p010.d/.tst/g.tst.d/res.d/makefile

# stck :: l_02_s2f {{pre_make}} [[pre_make]] 	${HOME}/fns_bsh/.d/.p.ax/.p010.d/.tst/g.tst.d/res.d/makefile

# stck :: l_02_fs2f ~/fns_bsh/.d/.p.ax/.p010.d/.dta/.pr.dta/makefile.set.tml.d/001_body.tml 	[[001_body]] 	${HOME}/fns_bsh/.d/.p.ax/.p010.d/.tst/g.tst.d/res.d/makefile

# stck :: l_02_s2f {{001_body}} [[001_body]] 	${HOME}/fns_bsh/.d/.p.ax/.p010.d/.tst/g.tst.d/res.d/makefile

# stck :: l_02_s2f {{pr_pth}} ${HOME}/fns_bsh/.d/.p.ax/.p010.d/.tst/g.tst.d/res.d 	${HOME}/fns_bsh/.d/.p.ax/.p010.d/.tst/g.tst.d/res.d/makefile

# stck :: lfoe_path_to_var /home/st/fns_bsh/.d/.p.ax/.p010.d/.tst/g.tst.d/res.d/makefile
