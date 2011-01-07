MANIFEST_DOT_FILES = dot_files/
#overwrite the existing set of dot files

dots: 
	#(cd dot_files)
	#cat $(MANIFEST_DOT_FILES)MANIFEST | perl -nle 'symlink split(" ",$$_)'
	#cat $(MANIFEST_DOT_FILES)MANIFEST | xargs -n 2 echo
	(cd $(MANIFEST_DOT_FILES); for i in `cat MANIFEST`; do ln -s env/$(MANIFEST_DOT_FILES)$$i ~/$$i; done)
	@echo Done installing dot files
