-- Biota cleanup for existing Spellsiphon items (v2.0 property update)
-- Updates existing items in player inventories to match new weenie template.

UPDATE biota_properties_int
SET value = 100
WHERE object_Id IN (SELECT id FROM biota WHERE weenie_Class_Id = 850200)
  AND type = 11; /* MaxStackSize */

UPDATE biota_properties_int
SET value = 1
WHERE object_Id IN (SELECT id FROM biota WHERE weenie_Class_Id = 850200)
  AND type = 5; /* EncumbranceVal */

UPDATE biota_properties_int
SET value = 1
WHERE object_Id IN (SELECT id FROM biota WHERE weenie_Class_Id = 850200)
  AND type = 13; /* StackUnitEncumbrance */

UPDATE biota_properties_int
SET value = 1
WHERE object_Id IN (SELECT id FROM biota WHERE weenie_Class_Id = 850200)
  AND type = 15; /* StackUnitValue */

UPDATE biota_properties_int
SET value = 1
WHERE object_Id IN (SELECT id FROM biota WHERE weenie_Class_Id = 850200)
  AND type = 19; /* Value */
