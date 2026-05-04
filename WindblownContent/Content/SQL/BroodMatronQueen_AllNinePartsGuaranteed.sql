-- Brood Matron / Brood Queen (hive tiers): each boss corpse guarantees all 9 quest body parts
-- for that tier (3 matron pieces + 6 queen pieces). Uses weenie_properties_create_list with
-- destination_Type = 9 (Contain|Treasure) and shade = 0 so ACE CreateListSelect always adds
-- every row (see Creature_Equipment.CreateListSelect: no RNG when shade == 0).
--
-- Tier mapping (ace_world weenie class_Id):
--   Young:       matron 24638 (hives mid),  queen 24640 (queen mid)
--   Adolescent:  matron 24637 (hives high), queen 24639 (queen high)
--   Nymph:       matron 24908 (hives low),  queen 24910 (queen low)
--   Elder:       matron 24907 (hives extreme), queen 24909 (queen extreme)
--
-- Rollback: restore from WindblownContent/sql-backups/YYYY-MM-DD/pre-brood-boss-create-list-treasure.sql

DELETE FROM weenie_properties_create_list
WHERE object_Id IN (24637, 24638, 24639, 24640, 24907, 24908, 24909, 24910)
  AND destination_Type = 9;

-- Young tier (same 9 WCIDs on both bosses)
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond) VALUES
(24638, 9, 24643, 0, 0, 0, 0),
(24638, 9, 24645, 0, 0, 0, 0),
(24638, 9, 24647, 0, 0, 0, 0),
(24638, 9, 24649, 0, 0, 0, 0),
(24638, 9, 24651, 0, 0, 0, 0),
(24638, 9, 24653, 0, 0, 0, 0),
(24638, 9, 24655, 0, 0, 0, 0),
(24638, 9, 24657, 0, 0, 0, 0),
(24638, 9, 24659, 0, 0, 0, 0),
(24640, 9, 24643, 0, 0, 0, 0),
(24640, 9, 24645, 0, 0, 0, 0),
(24640, 9, 24647, 0, 0, 0, 0),
(24640, 9, 24649, 0, 0, 0, 0),
(24640, 9, 24651, 0, 0, 0, 0),
(24640, 9, 24653, 0, 0, 0, 0),
(24640, 9, 24655, 0, 0, 0, 0),
(24640, 9, 24657, 0, 0, 0, 0),
(24640, 9, 24659, 0, 0, 0, 0);

-- Adolescent tier
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond) VALUES
(24637, 9, 24642, 0, 0, 0, 0),
(24637, 9, 24644, 0, 0, 0, 0),
(24637, 9, 24646, 0, 0, 0, 0),
(24637, 9, 24648, 0, 0, 0, 0),
(24637, 9, 24650, 0, 0, 0, 0),
(24637, 9, 24652, 0, 0, 0, 0),
(24637, 9, 24654, 0, 0, 0, 0),
(24637, 9, 24656, 0, 0, 0, 0),
(24637, 9, 24658, 0, 0, 0, 0),
(24639, 9, 24642, 0, 0, 0, 0),
(24639, 9, 24644, 0, 0, 0, 0),
(24639, 9, 24646, 0, 0, 0, 0),
(24639, 9, 24648, 0, 0, 0, 0),
(24639, 9, 24650, 0, 0, 0, 0),
(24639, 9, 24652, 0, 0, 0, 0),
(24639, 9, 24654, 0, 0, 0, 0),
(24639, 9, 24656, 0, 0, 0, 0),
(24639, 9, 24658, 0, 0, 0, 0);

-- Nymph tier
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond) VALUES
(24908, 9, 24920, 0, 0, 0, 0),
(24908, 9, 24922, 0, 0, 0, 0),
(24908, 9, 24924, 0, 0, 0, 0),
(24908, 9, 24926, 0, 0, 0, 0),
(24908, 9, 24928, 0, 0, 0, 0),
(24908, 9, 24930, 0, 0, 0, 0),
(24908, 9, 24932, 0, 0, 0, 0),
(24908, 9, 24934, 0, 0, 0, 0),
(24908, 9, 24936, 0, 0, 0, 0),
(24910, 9, 24920, 0, 0, 0, 0),
(24910, 9, 24922, 0, 0, 0, 0),
(24910, 9, 24924, 0, 0, 0, 0),
(24910, 9, 24926, 0, 0, 0, 0),
(24910, 9, 24928, 0, 0, 0, 0),
(24910, 9, 24930, 0, 0, 0, 0),
(24910, 9, 24932, 0, 0, 0, 0),
(24910, 9, 24934, 0, 0, 0, 0),
(24910, 9, 24936, 0, 0, 0, 0);

-- Elder tier
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond) VALUES
(24907, 9, 24919, 0, 0, 0, 0),
(24907, 9, 24921, 0, 0, 0, 0),
(24907, 9, 24923, 0, 0, 0, 0),
(24907, 9, 24925, 0, 0, 0, 0),
(24907, 9, 24927, 0, 0, 0, 0),
(24907, 9, 24929, 0, 0, 0, 0),
(24907, 9, 24931, 0, 0, 0, 0),
(24907, 9, 24933, 0, 0, 0, 0),
(24907, 9, 24935, 0, 0, 0, 0),
(24909, 9, 24919, 0, 0, 0, 0),
(24909, 9, 24921, 0, 0, 0, 0),
(24909, 9, 24923, 0, 0, 0, 0),
(24909, 9, 24925, 0, 0, 0, 0),
(24909, 9, 24927, 0, 0, 0, 0),
(24909, 9, 24929, 0, 0, 0, 0),
(24909, 9, 24931, 0, 0, 0, 0),
(24909, 9, 24933, 0, 0, 0, 0),
(24909, 9, 24935, 0, 0, 0, 0);
