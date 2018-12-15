
deps: pip-tools
	pip-compile\
		requirements.in --upgrade\
		-o requirements.txt

install: pip-tools
	pip-sync requirements.txt

pip-tools:
	pip install pip==18.1 --upgrade
	pip install pip-tools

-include Makefile.local
