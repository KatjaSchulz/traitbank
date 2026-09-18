SHELL = /bin/bash

all: dist/traitbank.tsv

clean:
	rm -rf data/ dist/ tmp/

HEAD: README.md
	preston track --algo md5 -f <(cat README.md | grep -oE "^http[^ ]+")
	preston head --algo md5 > HEAD
	echo -e "\n## Provenance\n\nRunning \n\`\`\`bash\npreston cat $(preston head --algo md5)\n\`\`\`\n on $(preston head --algo md5 | preston cat | grep "http://www.w3.org/ns/prov#startedAtTime" | head -1 | grep -Eo "[0-9]{4}-[0-9]{2}-[0-9]{2}") using preston v$(preston version) produced:\n\n\`\`\` " >> README.md
	preston head | preston cat | grep hasVersion >> README.md
	echo -e "\`\`\`\n"

dist/traitbank.json: HEAD
	mkdir -p dist
	cat HEAD | preston cat \
	  | grep hasVersion \
	  | grep -v terms \
	  | grep -v tbHierarchy \
	  | grep -oE "hash://md5/[a-f0-9]{32}" \
	  | xargs -I{} bash -c "preston cat {} | mlr --itsvlite --ojsonl --no-auto-unflatten cat" \
	  > dist/traitbank.json

dist/traitbank.tsv: dist/traitbank.json json2tsv.jq
	cat header.json | jq --raw-output '. | @tsv' > dist/traitbank.tsv
	cat dist/traitbank.json | jq --raw-output -f json2tsv.jq >> dist/traitbank.tsv

dist/term.tsv: HEAD
	cat HEAD | preston cat | grep hasVersion | grep terms | preston cat > dist/term.tsv

dist/taxon.tsv: HEAD
	cat HEAD | preston cat | grep hasVersion | grep tbHierarchy | preston cat > dist/taxon.tsv
