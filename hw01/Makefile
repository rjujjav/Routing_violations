ARG = Carolina State university
export ARG

p1:
	$(MAKE) -C pdrm
p2: p2/Makefile
	$(MAKE) -C p2
p3:
	cd pdrm && find .| grep -rm 1 "report_qor"| wc -l

p4: parsing.py
	$(MAKE) -C pdrm > cmd_out.txt
	python3 parsing.py
