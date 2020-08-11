:: Script for setting up virtual environment

@echo off
CALL activate personal_nb
CALL jupyter contrib nbextension install --sys-prefix
echo 'Enabling jupyter extensions...'
CALL jupyter nbextension enable toc2/main --sys-prefix
CALL jupyter nbextension enable table_beautifier/main --sys-prefix
CALL jupyter nbextension enable spellchecker/main --sys-prefix
echo 'Confirming the list of jupyter extensions installed...'
CALL jupyter nbextension list
echo 'SUCCESS! Your system is ready to use this notebook.'
CALL jupyter notebook
