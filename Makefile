MANIFEST_DOT_FILES = dot_files/
USERNAME = Carlo Costantini
EMAIL = carlo@carlocostantini.ca
#overwrite the existing set of dot files

dots: 
	(cd $(MANIFEST_DOT_FILES); for i in `cat MANIFEST`; do ln -s env/$(MANIFEST_DOT_FILES)$$i ~/$$i; done)
	@echo Done installing dot files
gitglobal:
	git config --global user.name "$(USERNAME)"
	git config --global user.email $(EMAIL)
setup:
	make dots
	make gitconfig
