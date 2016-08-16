* the code below lists study title, citation, externalID, and doi.

rglobi::query('START study = node:studies("*:*") 
WHERE study.source =~ ".*gomexsi.*" 
WITH study 
RETURN distinct(study.title), study.citation, study.externalId?, study.doi?')
