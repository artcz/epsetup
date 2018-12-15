
deps: pip-tools
	pip-compile\
		requirements.in --upgrade\
		-o requirements.txt

install: pip-tools
	pip-sync requirements.txt

pip-tools:
	pip install pip==18.1 --upgrade
	pip install pip-tools

testbox:
	ansible-playbook -i ansible/hosts.ini ansible/playbook.yml

-include Makefile.local
