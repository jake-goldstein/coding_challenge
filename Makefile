.PHONY: install run

install:
	# Get pip 	
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python3 get-pip.py
	rm get-pip.py
	# Set up venv
	python3 -m venv ./.venv
	. .venv/bin/activate
	pip install jupyterlab notebook voila pandas
	deactivate

run:
	. .venv/bin/activate
	jupyter-lab
