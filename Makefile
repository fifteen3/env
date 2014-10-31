#!/bin/bash
MANIFEST_DOT_FILES=dot_files
INSTALL_DIR=${HOME}
#overwrite the existing set of dot files
dots: 
	@(for i in `ls -A ${MANIFEST_DOT_FILES}`; do echo $$i; if [ -f ${INSTALL_DIR}/$$i ]; then mv ${INSTALL_DIR}/$$i ${INSTALL_DIR}/$$i.bak; fi; if [ -h ${INSTALL_DIR}/$$i ]; then rm ${INSTALL_DIR}/$$i; fi; ln -s env/${MANIFEST_DOT_FILES}/$$i ${INSTALL_DIR}/$$i; done;)
	@echo Done installing dot files

vim-backups:
	mkdir -p ${INSTALL_DIR}/.vim/backups
	mkdir ${INSTALL_DIR}/.vim/tmp

vim-pathogen:
	mkdir -p ${INSTALL_DIR}/.vim/autoload ~/.vim/bundle; \
	curl -so ${INSTALL_DIR}/.vim/autoload/pathogen.vim \
	https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

vim-syntastic:
	cd ${INSTALL_DIR}/.vim/bundle/ && git clone https://github.com/scrooloose/syntastic.git

all: dots vim-backups vim-pathogen
