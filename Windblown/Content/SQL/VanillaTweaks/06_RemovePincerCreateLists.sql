-- ============================================================
-- Remove old pincer create_list entries — 2026-05-10
-- Pincer drops are now handled entirely by TrophyLines
-- (Windblown/Content/TrophyLines/olthoi-pincer.json) with
-- per-creature WCID gating at 2.5% drop rate.
-- These 100%-rate create_list entries are no longer needed.
-- ============================================================

DELETE FROM weenie_properties_create_list
WHERE weenie_Class_Id IN (10843,10844,10845,10846,10847,27589,27590,27591,51211,51214);

SELECT ROW_COUNT() AS rows_deleted;
