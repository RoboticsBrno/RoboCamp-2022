setup-mkdocs:
	pip install -r requirements.txt

setup-local: setup-mkdocs
	mkdir -p .data
	ln data/local/microbit.yml .data/microbit.yml

setup-global: setup-mkdocs
	mkdir -p .data
	ln data/global/microbit.yml .data/microbit.yml

serve:
	mkdocs serve