*the code below returns a list of distinct predator names and a count of the number of prey lines there are for each predator

rglobi::query('START study = node:studies("*:*") 
WHERE study.source =~ ".*gomexsi.*" 
WITH study MATCH study-[:COLLECTED]-predator-[:ATE|PREYS_ON]->prey, predator-[:CLASSIFIED_AS]->predatorTaxon 
RETURN distinct(predatorTaxon.name), count(prey)')
