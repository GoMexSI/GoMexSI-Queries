*the code below returns a list of unmatched taxa that did not match against external taxonomy 

rglobi::query('START study = node:studies("*:*")
WHERE study.source=~ ".*gomexsi.*"
WITH study 
MATCH study-[:COLLECTED]->specimen-[:CLASSIFIED_AS]->taxon-[?:SAME_AS]->otherTaxon, specimen-[:ORIGINALLY_DESCRIBED_AS]->origTaxon
WHERE not(has(taxon.path)) AND not(has(otherTaxon.path)) 
RETURN distinct(origTaxon.name)')
