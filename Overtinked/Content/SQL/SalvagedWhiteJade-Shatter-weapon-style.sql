-- Salvaged White Jade (21084): weapon-tinkering salvage presentation (red bag) + Shatter LongDesc (Overtinked).
-- Revert: SalvagedWhiteJade-Shatter-weapon-style-rollback.sql

UPDATE weenie_properties_int SET value = 14 WHERE object_Id = 21084 AND type = 3;
UPDATE weenie_properties_int SET value = 524296 WHERE object_Id = 21084 AND type = 16;

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES (21084, 94, 33025)
ON DUPLICATE KEY UPDATE value = VALUES(value);

UPDATE weenie_properties_string SET value =
'Use on a treasure-generated melee or missile weapon to imbue Shatter. Each hit multiplies damage by (1 + 0.20 x stacks already on the creature), then adds stacks up to 5. At max stacks the target is broken (armor shattered). While broken, hits from this weapon add +50% damage on top of the rolled hit for any damage type on that swing (including elemental). Debuff and bonus apply only to hits from this weapon; allies can still benefit from a broken target in other ways. Stacks with other imbues. [Overtinked]'
WHERE object_Id = 21084 AND type = 14;
