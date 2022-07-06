SHELL:=/bin/bash

.PHONY: pack-circleci
pack-circleci:
	circleci -h >/dev/null 2>&1 || { echo >&2 "Install the circleci cli with brew install"; }
	cd .circleci && circleci config pack src > config.yml
	circleci config validate