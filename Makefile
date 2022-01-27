site_install:
	pip install -r requirements.txt

site_run_sort: site_install
	python sort.py

site_link: site_run_sort
	cp -f $(CURDIR)/README.md $(CURDIR)/docs/index.md

site_preview: site_link
	mkdocs serve

site_build: site_link
	mkdocs build

