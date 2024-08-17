# simple make file for common commands

newvenv:
	python -m venv .venv
	. venv/bin/activate

newlint:
	pre-commit install
	pre-commit autoupdate

compile:
	uv pip compile requirements.in -o requirements.txt

lint:
	pre-commit run --all-files
