-- Rollback weenie 21087 to retail-style useless salvage (pre-Hemorrhage weapon presentation).

UPDATE weenie_properties_int SET value = 4 WHERE object_Id = 21087 AND type = 3;
UPDATE weenie_properties_int SET value = 1 WHERE object_Id = 21087 AND type = 16;
DELETE FROM weenie_properties_int WHERE object_Id = 21087 AND type = 94;

UPDATE weenie_properties_string SET value = 'This item has no apparent use.' WHERE object_Id = 21087 AND type = 14;
