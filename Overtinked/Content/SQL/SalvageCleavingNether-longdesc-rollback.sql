-- Rollback LongDesc for Cleaving / Nether salvage (21081, 21064).

UPDATE weenie_properties_string SET value = 'This item has no apparent use.' WHERE object_Id = 21081 AND type = 14;
UPDATE weenie_properties_string SET value = 'This item has no apparent use.' WHERE object_Id = 21064 AND type = 14;
