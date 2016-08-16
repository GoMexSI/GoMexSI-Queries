*the code below finds all studies without game id

rglobi::query('START study = node:studies("*:*")
WHERE has(study.externalId) 
AND study.source =~ ".*gomexsi.*" AND not(study.externalId =~ ".*myfwc.*")
RETURN study.title, study.externalId?')
