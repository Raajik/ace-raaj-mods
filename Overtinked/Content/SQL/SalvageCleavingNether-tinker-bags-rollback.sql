-- Rollback bag/palette presentation for Tiger Eye (21081) and Onyx (21064).

UPDATE weenie_properties_int SET value = 4 WHERE object_Id = 21081 AND type = 3;
UPDATE weenie_properties_int SET value = 1 WHERE object_Id = 21081 AND type = 16;
DELETE FROM weenie_properties_int WHERE object_Id = 21081 AND type = 94;

UPDATE weenie_properties_int SET value = 4 WHERE object_Id = 21064 AND type = 3;
UPDATE weenie_properties_int SET value = 1 WHERE object_Id = 21064 AND type = 16;
DELETE FROM weenie_properties_int WHERE object_Id = 21064 AND type = 94;
