-- ============================================================
-- Remove tusk/jaw pickup timers — 2026-05-10
-- Matching the pincer pattern: min_Delta=0 so items can always
-- be looted. The 10-hour turn-in cooldown is handled by the
-- quest reward emote (not the pickup timer).
-- ============================================================

UPDATE quest SET min_Delta = 0 WHERE name IN (
  'TuskArmoredPickUp','TuskAssailerPickUp','TuskCrimsonbackPickUp','TuskDevastatorPickUp',
  'TuskFemalePickUp','TuskGoldenbackPickUp','TuskGuardPickUp','TuskLiberatorPickUp',
  'TuskMalePickUp','TuskPlatedPickUp','TuskRampagerPickUp','TuskRedeemerPickUp',
  'TuskSilverPickUp','TuskSlavePickUp','TuskSnowPickup_0513',
  'abhorrenteaterjaw','engorgedeaterjaw','insatiableeaterjaw','ravenouseaterjaw',
  'upperinsatiablejaw','voraciouseaterjaw'
);

SELECT 'OK' as status, ROW_COUNT() as rows_updated;