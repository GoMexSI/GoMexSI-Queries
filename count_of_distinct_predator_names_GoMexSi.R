*the code below returns a count of distinct predator names currently in GoMexSI 

rglobi::query('START study = node:studies("*:*")
WHERE study.source =~ ".*gomexsi.*" 
WITH study MATCH study-[:COLLECTED]-predator-[:ATE|PREYS_ON]->prey, predator-[:CLASSIFIED_AS]->predatorTaxon 
RETURN count(distinct(predatorTaxon.name))')
