-- ============================================================
-- Update Olthoi Ichor (850339) visuals for t2 tier — 2026-05-10
-- Adds: acid glow (UiEffects=256), blue underlay (100676435),
-- black '2' overlay (100690977)
-- ============================================================

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(850339, 18, 256)   -- UiEffects = Acid glow
ON DUPLICATE KEY UPDATE value = 256;

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(850339, 8, 100676435),  -- IconUnderlay = blue
(850339, 10, 100690977); -- IconOverlay = black '2'

SELECT 'OK' as status;