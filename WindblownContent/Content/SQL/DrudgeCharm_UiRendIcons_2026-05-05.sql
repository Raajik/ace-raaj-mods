-- Drudge charm tiers: ImbuedEffect (179) + UiEffects (18) for rend icon + outline colors.
-- Safe to re-run. Apply ace_world; restart ACE for weenie cache. Existing biota keep old props until replaced.
-- Regular 3669: Bludgeon + white (Frost). Quality 850271: Acid + green. Pristine 850272: Cold + blue. Perfect 850273: Electric + purple.

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(3669, 179, 32), (3669, 18, 128),
(850271, 179, 64), (850271, 18, 256),
(850272, 179, 128), (850272, 18, 1),
(850273, 179, 256), (850273, 18, 64)
ON DUPLICATE KEY UPDATE value = VALUES(value);
