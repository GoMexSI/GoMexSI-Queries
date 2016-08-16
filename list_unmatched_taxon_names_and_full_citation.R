* the code below returns a list of unmatched taxon names, and the full citation

rglobi::query('START study = node:studies("*:*")
WHERE study.source =~ ".*gomexsi.*"
WITH study
MATCH study-[:COLLECTED]->specimen-[:CLASSIFIED_AS]->taxon
WITH distinct(taxon) as dtaxon, study
MATCH dtaxon-[sameAs?:SAME_AS]->otherTaxon
WHERE not(has(dtaxon.path)) AND otherTaxon = null
WITH dtaxon, otherTaxon, study
MATCH study-[:COLLECTED]->specimen-[:CLASSIFIED_AS]->dtaxon, specimen-[:ORIGINALLY_DESCRIBED_AS]->origTaxon
RETURN distinct(origTaxon.name), study.citation as citation')
