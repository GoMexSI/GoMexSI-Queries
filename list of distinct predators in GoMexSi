*the code below returns a list of the distinct predators currently in GoMexSi

rglobi::query('START study = node:studies("*:*") 
WHERE study.source =~ ".*gomexsi.*" WITH study 
MATCH study-[:COLLECTED]-predator-[:ATE|PREYS_ON]->prey, predator-[:CLASSIFIED_AS]->predatorTaxon 
RETURN distinct(predatorTaxon.name)')
