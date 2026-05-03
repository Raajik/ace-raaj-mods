-- Rollback: Revert defense salvage descriptions back to +1

-- Revert Salvaged Peridot description
UPDATE weenie_properties_string 
SET value = 'Apply this material to treasure-generated armor to imbue the target with a +1 bonus to Melee Defense.'
WHERE object_Id = 21066 AND type = 14;

-- Revert Salvaged Yellow Topaz description
UPDATE weenie_properties_string 
SET value = 'Apply this material to treasure-generated armor to imbue the target with a +1 bonus to Missile Defense.'
WHERE object_Id = 21088 AND type = 14;

-- Revert Salvaged Zircon description
UPDATE weenie_properties_string 
SET value = 'Apply this material to treasure-generated armor to imbue the target with a +1 bonus to Magic Defense.'
WHERE object_Id = 21089 AND type = 14;

-- Revert Foolproof Peridot description
UPDATE weenie_properties_string 
SET value = 'Apply this material to a treasure-generated armor to imbue the target with a +1 bonus to Melee Defense.'
WHERE object_Id = 30101 AND type = 14;

-- Revert Foolproof Yellow Topaz description
UPDATE weenie_properties_string 
SET value = 'Apply this material to a treasure-generated armor to imbue the target with a +1 bonus to Missile Defense.'
WHERE object_Id = 30105 AND type = 14;

-- Revert Foolproof Zircon description
UPDATE weenie_properties_string 
SET value = 'Apply this material to a treasure-generated armor to imbue the target with a +1 bonus to Magic Defense.'
WHERE object_Id = 30106 AND type = 14;