setup-mkdocs:
	pip install -r requirements.txt

setup-local: setup-mkdocs
	mkdir -p .data
	cp data/local/microbit.yml .data/microbit.yml

setup-global: setup-mkdocs
	mkdir -p .data
	cp data/global/microbit.yml .data/microbit.yml

serve:
	mkdocs serve