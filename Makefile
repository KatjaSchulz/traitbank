SHELL = /bin/bash

all: dist/traits.tsv

clean:
	rm -rf data/ dist/ tmp/

HEAD: README.md
	preston track --algo md5 -f <(cat README.md | grep -oE "^http[^ ]+")
	preston head --algo md5 > HEAD



dist/traits.json: HEAD
	make -p dist
	preston cat HEAD \
	  | grep hasVersion \
	  | grep -v terms \
	  | grep -v tbHierarchy \
	  | grep -oE "hash://md5/[a-f0-9]{32}" \
	  | xargs -I{} bash -c "preston cat {} | mlr --itsvlite --ojsonl --no-auto-unflatten cat" \
	  > dist/traits.json

dist/traits.tsv: dist/traits.json json2tsv.jq
	cat dist/traits.json | jq -f json2tsv.jq > dist/traits.tsv
