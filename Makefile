SRC = $(wildcard ./*.ipynb)

all: one_ai_to_rule_them_all docs

one_ai_to_rule_them_all: $(SRC)
	nbdev_build_lib
	touch one_ai_to_rule_them_all

docs_serve: docs
	cd docs && bundle exec jekyll serve

docs: $(SRC)
	nbdev_build_docs
	touch docs

test:
	nbdev_test_nbs

release: pypi
	nbdev_bump_version

pypi: dist
	twine upload --repository pypi dist/*

dist: clean
	python setup.py sdist bdist_wheel

clean:
	rm -rf dist