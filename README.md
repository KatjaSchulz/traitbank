[![TraitBank Snapshot](../../actions/workflows/make.yml/badge.svg)](../../actions/workflows/make.yml)

# TraitBank Index

:warning: work in progress

These are the resources that make up traitbank:

```
https://zenodo.org/records/22776210/files/tbHierarchyV09.tsv
https://zenodo.org/records/22776578/files/terms_0.9.tsv
https://zenodo.org/records/22776839/files/references_0.9.tsv
https://zenodo.org/records/22777079/files/Kubitzki_0.9.tsv
https://zenodo.org/records/22777312/files/Brusca_0.9.txt
https://zenodo.org/records/22815869/files/Houlbreque.txt
```

## Building TraitBank

To compile traitbank from their sources, please run the following on a ```*nix``` system with GNU Make, Bash, jq, mlr and preston available:

```
make
```

after getting this repository copied (e.g., using ```git clone```, or download a zip archive) onto a ```*nix``` system that has GNU Make and Bash available.

This should generate a ```dist``` folder with files like ```dist/traits.tsv``` in it. The recipe for creating TraitBank is stored in [```Makefile```](./Makefile)
