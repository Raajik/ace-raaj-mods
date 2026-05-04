-- Drudge charm tiers: per-tier ImbuedEffect (179) + UiEffects (18) for client icon chrome.
-- Base WCID 24835 (Bloodletter). Safe to re-run. Apply ace_world; restart ACE for weenie cache.

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(24835, 179, 32), (24835, 18, 128),
(850271, 179, 64), (850271, 18, 256),
(850272, 179, 128), (850272, 18, 1),
(850273, 179, 256), (850273, 18, 64)
ON DUPLICATE KEY UPDATE value = VALUES(value);
