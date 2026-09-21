MATCH (t:Trait)<-[:trait]-(p:Page),
(t)-[:supplier]->(r:Resource),
(t)-[:predicate]->(pred:Term)
WHERE p.page_id = 328651 AND pred.uri = "http://purl.obolibrary.org/obo/VT_0001259"
OPTIONAL MATCH (t)-[:units_term]->(units:Term)
RETURN p.canonical, pred.name, t.measurement, units.name, r.resource_id, p.page_id, t.eol_pk, t.source
LIMIT 1;