-- DEPRECATED: per-tier rend icon split replaced 2026-05-04 by uniform sunstone (ArmorRending=4) + copy/plural/max stack.
-- Use DrudgeCharm_SunstoneCopyPluralStack_2026-05-04.sql or re-run DrudgeCharm_TierWeenies_World.sql (full clone) instead.
-- Kept file so old runbooks that reference this path still find a safe forward patch:

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(3669, 179, 4), (3669, 18, 0),
(850271, 179, 4), (850271, 18, 0),
(850272, 179, 4), (850272, 18, 0),
(850273, 179, 4), (850273, 18, 0)
ON DUPLICATE KEY UPDATE value = VALUES(value);
