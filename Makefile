.PHONY: all html pdf

# Run for example as: `make slide fn=01-Introduction`
slide:
	pandoc -t html5 --template=content/slides/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/slides/$(fn).md -o content/slides/$(fn).html
	decktape automatic --chrome-arg=--no-sandbox -s 1280x960 content/slides/$(fn).html content/slides/$(fn).pdf

pack: html pdf
html:
	rm -rf docs
	rm -rf website/_build
	cd website && rm -rf content
	# list folders with notebooks here. Notebooks must be present in _toc.yml.
	cp -r content website/
	# Build
	jupyter-book build website
	# Copy built site to docs
	cp -r website/_build/html docs
	rm -r website/_build
	# Move slides to built website
	rm -rf docs/content/slides
	mv website/content/slides docs/content
	# Move data to built website
	mkdir -p docs/content/data
	mv website/content/data/* docs/content/data/
	# Move figs to built website
	rm -rf docs/content/figs
	mv website/content/figs docs/content
	# Remove copied folders
	rm -rf website/content
	# No Jekyll on remote server
	touch docs/.nojekyll
pdf:
	rm -rf website/_build
	cd website && rm -rf content
	# list folders with notebooks here. Notebooks must be present in _toc.yml.
	cp -r content website/
	# Build
	jupyter-book build website/ --builder pdfhtml
	# Move over to docs
	mv website/_build/pdf/book.pdf content/data_science_studio.pdf
	# Clean
	rm -rf website/content
	rm -r website/_build
test:
	rm -rf tests
	mkdir tests
	jupyter nbconvert --to notebook \
                      --execute \
                      --output-dir=tests \
                      --ExecutePreprocessor.timeout=600 \
                      content/notebooks/*.ipynb 

	rm -rf tests
	echo "########\n\nAll blocks passed\n\n########"
reset_docs:
	rm -r docs/*
	git checkout HEAD docs/
	git checkout HEAD content/data_science_studio.pdf
