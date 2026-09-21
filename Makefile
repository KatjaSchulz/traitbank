SHELL = /bin/bash

PRESTON_VERSION = $(preston version)

HEAD = $(preston head --algo md5)

TRACK_DATE = $(preston head --algo md5 | preston cat | grep startedAtTime | head -1 | grep -Eo '[0-9]{4}-[0-9]{2}-[0-9]{2}')

all: dist/trait.tsv dist/term.tsv dist/taxon.tsv dist/reference.tsv

clean:
	rm -rf data/ dist/ tmp/

HEAD: README.md
	preston track --algo md5 -f <(cat README.md | grep -oE "^http[^ ]+")
	preston head --algo md5 > HEAD
	echo -e "\n## Provenance\n\nRunning \n\`\`\`bash\npreston cat $(HEAD)\n\`\`\`\n on $(TRACK_DATE) using preston v$(PRESTON_VERSION) produced:\n\n\`\`\` " >> README.md
	preston head --algo md5 | preston cat | grep hasVersion >> README.md
	echo -e "\`\`\`\n" >> README.md

dist/trait.json: HEAD
	mkdir -p dist
	cat HEAD | preston cat \
	  | grep hasVersion \
	  | grep -v terms \
	  | grep -v tbHierarchy \
	  | grep -v references \
	  | grep -oE "hash://md5/[a-f0-9]{32}" \
	  | xargs -I{} bash -c "preston cat {} | mlr --itsvlite --ojsonl --no-auto-unflatten cat" \
	  > dist/trait.json

dist/trait.tsv: dist/trait.json json2tsv.jq
	cat header.json | jq --raw-output '. | @tsv' > dist/trait.tsv
	cat dist/trait.json | jq --raw-output -f json2tsv.jq >> dist/trait.tsv

dist/term.tsv: HEAD
	cat HEAD | preston cat | grep hasVersion | grep terms | preston cat > dist/term.tsv

dist/taxon.tsv: HEAD
	cat HEAD | preston cat | grep hasVersion | grep tbHierarchy | preston cat > dist/taxon.tsv

dist/reference.tsv: HEAD
	cat HEAD | preston cat | grep hasVersion | grep references | preston cat > dist/references.tsv

