ARG = Carolina State
export ARG

p1:
	$(MAKE) -C pdrm
p2: p2/Makefile
	$(MAKE) -C p2
p3:
	cd pdrm && find .| grep -rm 1 "report_qor"| wc -l

