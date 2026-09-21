# Capacity Queries

Included TraitBank Cypher queries and associated responses were shared by Jen Hammock on 2026-09-21 . They are said to be executed against a production instance of the neo4j v4.2.19 server that currently powers some of the data services associated with the Encyclopedia of Life (https://eol.org) . The results were reproduced independently using a provided data dump [1].

# Provenance 

These capacity queries and their associated results were run against, and produced by, a neo4j v4.2.19 server loaded with ```graph.db-20260626-170239.dump``` with signatures as listed below.

## sha256 signatures

```
hash://sha256/2b3e3b26ac927d990cd33910bd0ba463500ff8796af5266c1a6feeb6adc68e5d  graph.db-20260626-170239.dump
hash://sha256/c924a086d9f516d6b00458b2b839be468d2e72e7af48de0a71ce6af4d8c964cc  2_echolocation_resources.cypher
hash://sha256/3fc1130cf1d922588b23721c8932fb16e396b9d59ef71eb3bae02ae75ce1f61b  2_echolocation_resources.cypher.response-dev-20260921.csv
hash://sha256/469784bb48ca09e666ede6ad7ec678a205494969740dc80f6774f5235ea5e915  2_echolocation_resources.cypher.response-prod-20260921.json
hash://sha256/d5541755dc5dbc51cc775a15d7d4784352211db16b3d6d4f74a6a7f2314f3aa2  3_ancestry.cypher
hash://sha256/a25e1a792bef483a15347f5c0968cd1785ea57ced3a33f733899a0c60fb62e90  3_ancestry.cypher.response-dev-20260921.csv
hash://sha256/8411ad8957f1f60a286bfde254c1510533aa18be953d73299bca8061cf1a6175  3_ancestry.cypher.response-prod-20260921.json
hash://sha256/6f3ad57cea12684aa038b242f53b68ea80c74057a753bc3dafa5950c6470c769  4_trait_sample.cypher
hash://sha256/c172c31cb483e5eea7260136c008330dabc68c20bf3a92d27f77eaf14bba0220  4_trait_sample.cypher.response-dev-20260921.csv
hash://sha256/3218f91b03d806011e2a8be3f18fb65330e91579c698b258ba11165e59692f1a  4_trait_sample.cypher.response-prod-20260921.json
hash://sha256/b3908c6beb29c0ea43661b773aa2b2538b927a18c31fd0a54fb1ac23178d13ee  5_mule_deer_mass.cypher
hash://sha256/012252add6490bed173b2c516bb4302e19d64d5ee2bb4015ac28c3063ea34129  5_mule_deer_mass.cypher.response-dev-20260921.csv
hash://sha256/8916f351e35b18cc93fc27a87a0ce2fb7359816acda43112632b48da37510c70  5_mule_deer_mass.cypher.response-prod-20260921.json
```

## md5 signatures

```
hash://md5/cc29b1c5a5843ff151e289ef28c128e8  graph.db-20260626-170239.dump
hash://md5/2df5caaf52f2b92c34cc70d02d2eb958  2_echolocation_resources.cypher
hash://md5/0dd579fa0a939722d23ad2adab2ee12e  2_echolocation_resources.cypher.response-dev-20260921.csv
hash://md5/887416b61f7da256f56d7e57060e848e  2_echolocation_resources.cypher.response-prod-20260921.json
hash://md5/abdc8d5e643679a644c441dc09768d9e  3_ancestry.cypher
hash://md5/be6d62ac2267ed8ba4ad901d791c45ac  3_ancestry.cypher.response-dev-20260921.csv
hash://md5/410a7e750d2ffc45b48138a20b49e2cc  3_ancestry.cypher.response-prod-20260921.json
hash://md5/56fd1e181d1c8bcc9b886819ea935768  4_trait_sample.cypher
hash://md5/eda84d736caccab74819d28d3c1e97da  4_trait_sample.cypher.response-dev-20260921.csv
hash://md5/8c8ff1a34410e644e18d8da314d3feb4  4_trait_sample.cypher.response-prod-20260921.json
hash://md5/50fc9305eafb182490eb3cec6b2f1d27  5_mule_deer_mass.cypher
hash://md5/61025f4a62c0745aa5b70e61810e6286  5_mule_deer_mass.cypher.response-dev-20260921.csv
hash://md5/8407022fe528f764a202e5ffda1f037f  5_mule_deer_mass.cypher.response-prod-20260921.json
```

# References

[1] Hammock, J., & Schulz, K. (2026). Encyclopedia of Life's TraitBank: Neo4j Graph Database Archive and Example Cypher Queries hash://md5/d96ce5ae7708424700ebadcd83936236 hash://sha256/baaa475538f53cfbf71e0ce6f28f4b1ef4d7ff19ffa596f3c2e4b64145c36f51 [Dataset]. Zenodo. [https://doi.org/10.5281/zenodo.22883905](https://doi.org/10.5281/zenodo.22883905).
