-- Update Salvaged Peridot description: +5 Melee Defense instead of +1
UPDATE weenie_properties_string 
SET value = 'Apply this material to treasure-generated armor to imbue the target with a +5 bonus to Melee Defense.'
WHERE object_Id = 21066 AND type = 14;

-- Update Salvaged Yellow Topaz description: +5 Missile Defense instead of +1
UPDATE weenie_properties_string 
SET value = 'Apply this material to treasure-generated armor to imbue the target with a +5 bonus to Missile Defense.'
WHERE object_Id = 21088 AND type = 14;

-- Update Salvaged Zircon description: +5 Magic Defense instead of +1
UPDATE weenie_properties_string 
SET value = 'Apply this material to treasure-generated armor to imbue the target with a +5 bonus to Magic Defense.'
WHERE object_Id = 21089 AND type = 14;

-- Update Foolproof Peridot description: +5 Melee Defense instead of +1
UPDATE weenie_properties_string 
SET value = 'Apply this material to a treasure-generated armor to imbue the target with a +5 bonus to Melee Defense.'
WHERE object_Id = 30101 AND type = 14;

-- Update Foolproof Yellow Topaz description: +5 Missile Defense instead of +1
UPDATE weenie_properties_string 
SET value = 'Apply this material to a treasure-generated armor to imbue the target with a +5 bonus to Missile Defense.'
WHERE object_Id = 30105 AND type = 14;

-- Update Foolproof Zircon description: +5 Magic Defense instead of +1
UPDATE weenie_properties_string 
SET value = 'Apply this material to a treasure-generated armor to imbue the target with a +5 bonus to Magic Defense.'
WHERE object_Id = 30106 AND type = 14;