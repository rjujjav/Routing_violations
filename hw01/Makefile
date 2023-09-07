ARG = Carolina State university
export ARG

p1:
	date > cmd_out.txt
	$(MAKE) -C pdrm
	date >> cmd_out.txt
p2: Makefile
	time $(MAKE) -C p2
p3: pdrm/Makefile
	cd pdrm && find .| grep -rm 1 "report_qor"| wc -l

p4:
	python3 parsing.py
