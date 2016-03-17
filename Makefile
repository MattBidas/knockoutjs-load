all: upload

upload:
	scp index.html www-data@infdot.com:/sites/demos.rlaanemets.com/public/knockoutjs-load/

.PHONY: all upload
