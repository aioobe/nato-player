nato.sh: oggs.tgz nato-script.sh
	cat nato-script.sh $< > $@
	chmod +x $@

oggs.tgz:
	tar --create --gzip --file $@ oggs
