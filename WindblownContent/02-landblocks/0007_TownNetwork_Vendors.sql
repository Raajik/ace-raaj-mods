-- Pathwarden Vendor Spawns in Town Network
-- Landblock: 0x0007 (Town Network dungeon)

DELETE FROM `landblock_instance` WHERE `weenie_Class_Id` IN (850300, 850301, 850302, 850303, 800039) AND `landblock` = 0x0007;

-- Vendor 1: Kaelith (850300) - Cell 0x0007013F
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7000701, 850300, 0x0007013F, 69.617142, -21.253174, 0.005000, -0.999845, 0.000000, 0.000000, 0.017632, False, '2025-04-30 00:00:00');

-- Vendor 2: Thornwick (850301) - Cell 0x00070114
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7000702, 850301, 0x00070114, 20.765209, -69.115227, 0.005000, -0.704124, 0.000000, 0.000000, -0.710077, False, '2025-04-30 00:00:00');

-- Vendor 3: Mirelle (850302) - Cell 0x00070178
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7000703, 850302, 0x00070178, 119.098976, -70.653809, 0.005000, 0.727364, 0.000000, 0.000000, -0.686251, False, '2025-04-30 00:00:00');

-- Vendor 4: Eldrin (850303) - Cell 0x0007014B
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7000704, 850303, 0x0007014B, 69.448631, -138.632950, 0.005000, 0.010775, 0.000000, 0.000000, 0.999942, False, '2025-04-30 00:00:00');

-- Vendor 5: Radi (800039) - Cell 0x00070132
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700070D3, 800039, 0x00070132, 61.905308, -62.405346, 0.005000, 0.935749, 0.000000, 0.000000, 0.352668, False, '2025-02-09 10:00:00');
