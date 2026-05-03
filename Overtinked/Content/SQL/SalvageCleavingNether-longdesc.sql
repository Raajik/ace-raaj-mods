-- LongDesc for Cleaving (Tiger Eye 21081) and Nether Rending (Onyx 21064) salvage bags.
-- Match Overtinked Settings.json CleavingImbue / NetherRendingImbue for default numbers; yards only for splash radius.
-- Revert: SalvageCleavingNether-longdesc-rollback.sql

UPDATE weenie_properties_string SET value =
'Use on a treasure-generated weapon to imbue Cleaving (Overtinked). When you land a melee hit, a portion of that hit''s damage splashes as health loss to other valid foes near the primary target (no chain cleave). Default server tuning: 35% splash, up to 8 extra targets, 5.5 yd splash radius (CleavingImbue in Settings.json).'
WHERE object_Id = 21081 AND type = 14;

UPDATE weenie_properties_string SET value =
'Use on a treasure-generated weapon to imbue Nether Rending (Overtinked). Each qualifying primary hit adds extra Nether damage from the hit''s final damage (server-tuned fraction). Main target only; no splash. Default server tuning: +25% Nether from primary hit (NetherRendingImbue in Settings.json).'
WHERE object_Id = 21064 AND type = 14;
