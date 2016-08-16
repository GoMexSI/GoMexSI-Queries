* The code below list sourceOccuranceID, externalID, name, and type of interaction.


rglobi::query('START study = node:studies("*:*") 
MATCH study-[:COLLECTED]->source-[:CLASSIFIED_AS]->sourceTaxon, source-[rel:ATE|PREYS_UPON|PARASITE_OF|HAS_HOST|INTERACTS_WITH]->target-[:CLASSIFIED_AS]->targetTaxon 
WHERE sourceTaxon.name = "Adalia bipunctata" 
RETURN  id(source) as sourceOccurrenceId, sourceTaxon.externalId, sourceTaxon.name, id(rel) as occurrenceInteractionId, type(rel) as occurrenceInteractionType, id(target) as targetOccurrenceId, targetTaxon.externalId, targetTaxon.name')
