-- Salvaged Yellow Garnet (21087): weapon-tinkering salvage presentation (palette + use mask)
-- like Red Garnet / Emerald, while keeping IconOverlay 100673311 (yellow garnet gem art).
-- Hemorrhage imbue material (Overtinked). Revert: SalvagedYellowGarnet-Hemorrhage-weapon-style-rollback.sql

UPDATE weenie_properties_int SET value = 14 WHERE object_Id = 21087 AND type = 3;
UPDATE weenie_properties_int SET value = 524296 WHERE object_Id = 21087 AND type = 16;

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES (21087, 94, 33025)
ON DUPLICATE KEY UPDATE value = VALUES(value);

UPDATE weenie_properties_string SET value =
'Use on a treasure-generated weapon to imbue Hemorrhage (Overtinked). On hit: stacking health drain on the target; each hit adds stacks up to a cap; drain ticks over time. The primary target gains stacks, and any valid foe within 10 yd of the struck victim can also gain stacks on the same swing. Default server tuning: +3 stacks per hit, max 15 stacks per victim, 10 yd AoE (change HemorrhageImbue in Overtinked Settings.json).'
WHERE object_Id = 21087 AND type = 14;
