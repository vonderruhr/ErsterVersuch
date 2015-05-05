#!/usr/bin/make
# This is the ... Makefile
# Destination directoty can be changed: 
# make install DESTDIR=/path/to/dir

# Vars
DESTDIR=
SCRIPTS=$(DESTDIR)/usr/bin
PROJEKTVERZEICHNIS=/etc/usr/nagios-check

# help target
help:
	@echo ' '
	@echo 'Targets of this Makefile:'
	@echo '-------------------------------------'
	@echo ' '
	@echo '   make help'
	@echo '      show this help'
	@echo ' '
	@echo '   make install'
	@echo '      install the scripts into OS'
	@echo ' '
	@echo '   make uninstall'
	@echo '      delete the scripts from OS'
	@echo ' '

# install target
install:
	@install -D -oroot -groot --mode=0744 check-prozesse $(PROJEKTVERZEICHNIS)/check-prozesse

# uninstall target
uninstall:
	@rm $(PROJEKTVERZEICHNIS)/check-prozesse
