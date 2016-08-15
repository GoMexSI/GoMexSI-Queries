*the code below returns a list of mammals easten by Homo Sapiens in coastal areas.

rglobi::query('START predatorTaxon = node:taxons(name="Homo sapiens")
MATCH predatorTaxon<-[:CLASSIFIED_AS]-predator-[:ATE|PREYS_ON]->prey-[:CLASSIFIED_AS]->preyTaxon,
predator-[:COLLECTED_AT]->location-[:HAS_ENVIRONMENT]->envo
WHERE envo.name= "coast" 
WITH envo, preyTaxon, predatorTaxon 
MATCH preyTaxon<-[:CLASSIFIED_AS]-pred2-[:ATE]->prey2-[:CLASSIFIED_AS]->preyOfPreyTaxon
RETURN envo.externalId, envo.name, preyTaxon.commonNames?, preyTaxon.path?, predatorTaxon.name as predatorName, preyTaxon.name as preyName, count(distinct preyOfPreyTaxon.name) as preyOfPreyCount')

