-- ============================================================================
-- Patch: Missing Weenie Placeholders for Qalaba'r Landblock (0x9722)
-- ============================================================================
-- These weenies are referenced in landblock 9722.sql but their definitions
-- were not found in any backup or content repository. They appear to be part
-- of the tiered invasion / custom content for Qalaba'r that didn't get
-- generated properly.
-- Run this against your ace_world database to create minimal placeholder
-- creatures that will spawn without "Database does not contain weenie" errors.
-- Replace these with proper weenie definitions when they are found.
-- ============================================================================

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------------------------------------------------------
-- Helper: Delete any existing partial data for these WCIDs before inserting
-- ----------------------------------------------------------------------------
DELETE FROM weenie WHERE class_Id IN (801156,801174,801183,801192,801201,801210,802802);
DELETE FROM weenie_properties_int WHERE object_Id IN (801156,801174,801183,801192,801201,801210,802802);
DELETE FROM weenie_properties_string WHERE object_Id IN (801156,801174,801183,801192,801201,801210,802802);
DELETE FROM weenie_properties_d_i_d WHERE object_Id IN (801156,801174,801183,801192,801201,801210,802802);
DELETE FROM weenie_properties_bool WHERE object_Id IN (801156,801174,801183,801192,801201,801210,802802);
DELETE FROM weenie_properties_float WHERE object_Id IN (801156,801174,801183,801192,801201,801210,802802);
DELETE FROM weenie_properties_attribute WHERE object_Id IN (801156,801174,801183,801192,801201,801210,802802);
DELETE FROM weenie_properties_attribute_2nd WHERE object_Id IN (801156,801174,801183,801192,801201,801210,802802);
DELETE FROM weenie_properties_body_part WHERE object_Id IN (801156,801174,801183,801192,801201,801210,802802);

-- ============================================================================
-- 801156 - Qalaba'r Invader (Tier 1 placeholder)
-- ============================================================================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
VALUES (801156, 'qalabar_invader_t1', 15, '2025-04-27 12:00:00');

INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES
(801156, 1, 'Qalaba''r Invader (Placeholder)'),
(801156, 7, 'This is a placeholder weenie. The real definition was not found.'),
(801156, 14, 'Replace this creature with the intended weenie when available.');

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES
(801156, 2, 6),
(801156, 25, 50),
(801156, 16, 1),
(801156, 93, 1032),
(801156, 133, 2),
(801156, 307, 10),
(801156, 308, 10),
(801156, 315, 5),
(801156, 27, 0),
(801156, 49, 0),
(801156, 50, 0),
(801156, 51, 0);

INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
VALUES
(801156, 1, 33561241),
(801156, 2, 150994951),
(801156, 3, 536870913),
(801156, 6, 67108965),
(801156, 8, 100667446);

INSERT INTO weenie_properties_bool (object_Id, type, value)
VALUES
(801156, 1, 1),
(801156, 11, 0),
(801156, 12, 1),
(801156, 13, 0),
(801156, 14, 1);

INSERT INTO weenie_properties_float (object_Id, type, value)
VALUES
(801156, 39, 1.3),
(801156, 1, 5),
(801156, 31, 15),
(801156, 64, 0.5),
(801156, 65, 1),
(801156, 66, 1),
(801156, 67, 0);

INSERT INTO weenie_properties_attribute (object_Id, type, init_Level, level_From_C_P, c_P_Spent)
VALUES
(801156, 1, 150, 0, 0),
(801156, 2, 150, 0, 0),
(801156, 3, 150, 0, 0),
(801156, 4, 120, 0, 0),
(801156, 5, 120, 0, 0),
(801156, 6, 120, 0, 0);

INSERT INTO weenie_properties_attribute_2nd (object_Id, type, init_Level, level_From_C_P, c_P_Spent, current_Level)
VALUES
(801156, 1, 200, 0, 0, 200),
(801156, 2, 150, 0, 0, 150),
(801156, 3, 150, 0, 0, 150),
(801156, 4, 200, 0, 0, 200),
(801156, 5, 150, 0, 0, 150);

INSERT INTO weenie_properties_body_part (object_Id, key, d_Type, d_Val, d_Var, base_Armor)
VALUES
(801156, 0, 1, 5, 0, 100),
(801156, 1, 1, 5, 0, 100),
(801156, 2, 1, 5, 0, 100),
(801156, 3, 1, 5, 0, 100);

-- ============================================================================
-- 801174 - Qalaba'r Invader (Tier 2 placeholder)
-- ============================================================================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
VALUES (801174, 'qalabar_invader_t2', 15, '2025-04-27 12:00:00');

INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES
(801174, 1, 'Qalaba''r Invader (Placeholder)'),
(801174, 7, 'This is a placeholder weenie. The real definition was not found.'),
(801174, 14, 'Replace this creature with the intended weenie when available.');

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES
(801174, 2, 6),
(801174, 25, 75),
(801174, 16, 1),
(801174, 93, 1032),
(801174, 133, 2),
(801174, 307, 15),
(801174, 308, 15),
(801174, 315, 5),
(801174, 27, 0),
(801174, 49, 0),
(801174, 50, 0),
(801174, 51, 0);

INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
VALUES
(801174, 1, 33561241),
(801174, 2, 150994951),
(801174, 3, 536870913),
(801174, 6, 67108965),
(801174, 8, 100667446);

INSERT INTO weenie_properties_bool (object_Id, type, value)
VALUES
(801174, 1, 1),
(801174, 11, 0),
(801174, 12, 1),
(801174, 13, 0),
(801174, 14, 1);

INSERT INTO weenie_properties_float (object_Id, type, value)
VALUES
(801174, 39, 1.4),
(801174, 1, 5),
(801174, 31, 18),
(801174, 64, 0.6),
(801174, 65, 1),
(801174, 66, 1),
(801174, 67, 0);

INSERT INTO weenie_properties_attribute (object_Id, type, init_Level, level_From_C_P, c_P_Spent)
VALUES
(801174, 1, 200, 0, 0),
(801174, 2, 200, 0, 0),
(801174, 3, 200, 0, 0),
(801174, 4, 160, 0, 0),
(801174, 5, 160, 0, 0),
(801174, 6, 160, 0, 0);

INSERT INTO weenie_properties_attribute_2nd (object_Id, type, init_Level, level_From_C_P, c_P_Spent, current_Level)
VALUES
(801174, 1, 300, 0, 0, 300),
(801174, 2, 200, 0, 0, 200),
(801174, 3, 200, 0, 0, 200),
(801174, 4, 300, 0, 0, 300),
(801174, 5, 200, 0, 0, 200);

INSERT INTO weenie_properties_body_part (object_Id, key, d_Type, d_Val, d_Var, base_Armor)
VALUES
(801174, 0, 1, 8, 0, 150),
(801174, 1, 1, 8, 0, 150),
(801174, 2, 1, 8, 0, 150),
(801174, 3, 1, 8, 0, 150);

-- ============================================================================
-- 801183 - Qalaba'r Invader (Tier 3 placeholder)
-- ============================================================================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
VALUES (801183, 'qalabar_invader_t3', 15, '2025-04-27 12:00:00');

INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES
(801183, 1, 'Qalaba''r Invader (Placeholder)'),
(801183, 7, 'This is a placeholder weenie. The real definition was not found.'),
(801183, 14, 'Replace this creature with the intended weenie when available.');

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES
(801183, 2, 6),
(801183, 25, 100),
(801183, 16, 1),
(801183, 93, 1032),
(801183, 133, 2),
(801183, 307, 20),
(801183, 308, 20),
(801183, 315, 5),
(801183, 27, 0),
(801183, 49, 0),
(801183, 50, 0),
(801183, 51, 0);

INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
VALUES
(801183, 1, 33561241),
(801183, 2, 150994951),
(801183, 3, 536870913),
(801183, 6, 67108965),
(801183, 8, 100667446);

INSERT INTO weenie_properties_bool (object_Id, type, value)
VALUES
(801183, 1, 1),
(801183, 11, 0),
(801183, 12, 1),
(801183, 13, 0),
(801183, 14, 1);

INSERT INTO weenie_properties_float (object_Id, type, value)
VALUES
(801183, 39, 1.5),
(801183, 1, 5),
(801183, 31, 22),
(801183, 64, 0.7),
(801183, 65, 1),
(801183, 66, 1),
(801183, 67, 0);

INSERT INTO weenie_properties_attribute (object_Id, type, init_Level, level_From_C_P, c_P_Spent)
VALUES
(801183, 1, 250, 0, 0),
(801183, 2, 250, 0, 0),
(801183, 3, 250, 0, 0),
(801183, 4, 200, 0, 0),
(801183, 5, 200, 0, 0),
(801183, 6, 200, 0, 0);

INSERT INTO weenie_properties_attribute_2nd (object_Id, type, init_Level, level_From_C_P, c_P_Spent, current_Level)
VALUES
(801183, 1, 400, 0, 0, 400),
(801183, 2, 250, 0, 0, 250),
(801183, 3, 250, 0, 0, 250),
(801183, 4, 400, 0, 0, 400),
(801183, 5, 250, 0, 0, 250);

INSERT INTO weenie_properties_body_part (object_Id, key, d_Type, d_Val, d_Var, base_Armor)
VALUES
(801183, 0, 1, 12, 0, 200),
(801183, 1, 1, 12, 0, 200),
(801183, 2, 1, 12, 0, 200),
(801183, 3, 1, 12, 0, 200);

-- ============================================================================
-- 801192 - Qalaba'r Invader (Tier 4 placeholder)
-- ============================================================================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
VALUES (801192, 'qalabar_invader_t4', 15, '2025-04-27 12:00:00');

INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES
(801192, 1, 'Qalaba''r Invader (Placeholder)'),
(801192, 7, 'This is a placeholder weenie. The real definition was not found.'),
(801192, 14, 'Replace this creature with the intended weenie when available.');

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES
(801192, 2, 6),
(801192, 25, 125),
(801192, 16, 1),
(801192, 93, 1032),
(801192, 133, 2),
(801192, 307, 25),
(801192, 308, 25),
(801192, 315, 5),
(801192, 27, 0),
(801192, 49, 0),
(801192, 50, 0),
(801192, 51, 0);

INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
VALUES
(801192, 1, 33561241),
(801192, 2, 150994951),
(801192, 3, 536870913),
(801192, 6, 67108965),
(801192, 8, 100667446);

INSERT INTO weenie_properties_bool (object_Id, type, value)
VALUES
(801192, 1, 1),
(801192, 11, 0),
(801192, 12, 1),
(801192, 13, 0),
(801192, 14, 1);

INSERT INTO weenie_properties_float (object_Id, type, value)
VALUES
(801192, 39, 1.6),
(801192, 1, 5),
(801192, 31, 26),
(801192, 64, 0.8),
(801192, 65, 1),
(801192, 66, 1),
(801192, 67, 0);

INSERT INTO weenie_properties_attribute (object_Id, type, init_Level, level_From_C_P, c_P_Spent)
VALUES
(801192, 1, 300, 0, 0),
(801192, 2, 300, 0, 0),
(801192, 3, 300, 0, 0),
(801192, 4, 240, 0, 0),
(801192, 5, 240, 0, 0),
(801192, 6, 240, 0, 0);

INSERT INTO weenie_properties_attribute_2nd (object_Id, type, init_Level, level_From_C_P, c_P_Spent, current_Level)
VALUES
(801192, 1, 500, 0, 0, 500),
(801192, 2, 300, 0, 0, 300),
(801192, 3, 300, 0, 0, 300),
(801192, 4, 500, 0, 0, 500),
(801192, 5, 300, 0, 0, 300);

INSERT INTO weenie_properties_body_part (object_Id, key, d_Type, d_Val, d_Var, base_Armor)
VALUES
(801192, 0, 1, 16, 0, 250),
(801192, 1, 1, 16, 0, 250),
(801192, 2, 1, 16, 0, 250),
(801192, 3, 1, 16, 0, 250);

-- ============================================================================
-- 801201 - Qalaba'r Invader (Tier 5 placeholder)
-- ============================================================================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
VALUES (801201, 'qalabar_invader_t5', 15, '2025-04-27 12:00:00');

INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES
(801201, 1, 'Qalaba''r Invader (Placeholder)'),
(801201, 7, 'This is a placeholder weenie. The real definition was not found.'),
(801201, 14, 'Replace this creature with the intended weenie when available.');

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES
(801201, 2, 6),
(801201, 25, 150),
(801201, 16, 1),
(801201, 93, 1032),
(801201, 133, 2),
(801201, 307, 30),
(801201, 308, 30),
(801201, 315, 5),
(801201, 27, 0),
(801201, 49, 0),
(801201, 50, 0),
(801201, 51, 0);

INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
VALUES
(801201, 1, 33561241),
(801201, 2, 150994951),
(801201, 3, 536870913),
(801201, 6, 67108965),
(801201, 8, 100667446);

INSERT INTO weenie_properties_bool (object_Id, type, value)
VALUES
(801201, 1, 1),
(801201, 11, 0),
(801201, 12, 1),
(801201, 13, 0),
(801201, 14, 1);

INSERT INTO weenie_properties_float (object_Id, type, value)
VALUES
(801201, 39, 1.7),
(801201, 1, 5),
(801201, 31, 30),
(801201, 64, 0.9),
(801201, 65, 1),
(801201, 66, 1),
(801201, 67, 0);

INSERT INTO weenie_properties_attribute (object_Id, type, init_Level, level_From_C_P, c_P_Spent)
VALUES
(801201, 1, 350, 0, 0),
(801201, 2, 350, 0, 0),
(801201, 3, 350, 0, 0),
(801201, 4, 280, 0, 0),
(801201, 5, 280, 0, 0),
(801201, 6, 280, 0, 0);

INSERT INTO weenie_properties_attribute_2nd (object_Id, type, init_Level, level_From_C_P, c_P_Spent, current_Level)
VALUES
(801201, 1, 600, 0, 0, 600),
(801201, 2, 350, 0, 0, 350),
(801201, 3, 350, 0, 0, 350),
(801201, 4, 600, 0, 0, 600),
(801201, 5, 350, 0, 0, 350);

INSERT INTO weenie_properties_body_part (object_Id, key, d_Type, d_Val, d_Var, base_Armor)
VALUES
(801201, 0, 1, 20, 0, 300),
(801201, 1, 1, 20, 0, 300),
(801201, 2, 1, 20, 0, 300),
(801201, 3, 1, 20, 0, 300);

-- ============================================================================
-- 801210 - Qalaba'r Invader (Tier 6 placeholder)
-- ============================================================================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
VALUES (801210, 'qalabar_invader_t6', 15, '2025-04-27 12:00:00');

INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES
(801210, 1, 'Qalaba''r Invader (Placeholder)'),
(801210, 7, 'This is a placeholder weenie. The real definition was not found.'),
(801210, 14, 'Replace this creature with the intended weenie when available.');

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES
(801210, 2, 6),
(801210, 25, 175),
(801210, 16, 1),
(801210, 93, 1032),
(801210, 133, 2),
(801210, 307, 35),
(801210, 308, 35),
(801210, 315, 5),
(801210, 27, 0),
(801210, 49, 0),
(801210, 50, 0),
(801210, 51, 0);

INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
VALUES
(801210, 1, 33561241),
(801210, 2, 150994951),
(801210, 3, 536870913),
(801210, 6, 67108965),
(801210, 8, 100667446);

INSERT INTO weenie_properties_bool (object_Id, type, value)
VALUES
(801210, 1, 1),
(801210, 11, 0),
(801210, 12, 1),
(801210, 13, 0),
(801210, 14, 1);

INSERT INTO weenie_properties_float (object_Id, type, value)
VALUES
(801210, 39, 1.8),
(801210, 1, 5),
(801210, 31, 35),
(801210, 64, 1.0),
(801210, 65, 1),
(801210, 66, 1),
(801210, 67, 0);

INSERT INTO weenie_properties_attribute (object_Id, type, init_Level, level_From_C_P, c_P_Spent)
VALUES
(801210, 1, 400, 0, 0),
(801210, 2, 400, 0, 0),
(801210, 3, 400, 0, 0),
(801210, 4, 320, 0, 0),
(801210, 5, 320, 0, 0),
(801210, 6, 320, 0, 0);

INSERT INTO weenie_properties_attribute_2nd (object_Id, type, init_Level, level_From_C_P, c_P_Spent, current_Level)
VALUES
(801210, 1, 700, 0, 0, 700),
(801210, 2, 400, 0, 0, 400),
(801210, 3, 400, 0, 0, 400),
(801210, 4, 700, 0, 0, 700),
(801210, 5, 400, 0, 0, 400);

INSERT INTO weenie_properties_body_part (object_Id, key, d_Type, d_Val, d_Var, base_Armor)
VALUES
(801210, 0, 1, 25, 0, 350),
(801210, 1, 1, 25, 0, 350),
(801210, 2, 1, 25, 0, 350),
(801210, 3, 1, 25, 0, 350);

-- ============================================================================
-- 802802 - Qalaba'r Elite Invader (Placeholder)
-- ============================================================================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
VALUES (802802, 'qalabar_invader_elite', 15, '2025-04-27 12:00:00');

INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES
(802802, 1, 'Qalaba''r Elite Invader (Placeholder)'),
(802802, 7, 'This is a placeholder weenie. The real definition was not found.'),
(802802, 14, 'Replace this creature with the intended weenie when available.');

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES
(802802, 2, 6),
(802802, 25, 200),
(802802, 16, 1),
(802802, 93, 1032),
(802802, 133, 2),
(802802, 307, 45),
(802802, 308, 45),
(802802, 315, 5),
(802802, 27, 0),
(802802, 49, 0),
(802802, 50, 0),
(802802, 51, 0);

INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
VALUES
(802802, 1, 33561241),
(802802, 2, 150994951),
(802802, 3, 536870913),
(802802, 6, 67108965),
(802802, 8, 100667446);

INSERT INTO weenie_properties_bool (object_Id, type, value)
VALUES
(802802, 1, 1),
(802802, 11, 0),
(802802, 12, 1),
(802802, 13, 0),
(802802, 14, 1);

INSERT INTO weenie_properties_float (object_Id, type, value)
VALUES
(802802, 39, 2.0),
(802802, 1, 5),
(802802, 31, 40),
(802802, 64, 1.2),
(802802, 65, 1),
(802802, 66, 1),
(802802, 67, 0);

INSERT INTO weenie_properties_attribute (object_Id, type, init_Level, level_From_C_P, c_P_Spent)
VALUES
(802802, 1, 450, 0, 0),
(802802, 2, 450, 0, 0),
(802802, 3, 450, 0, 0),
(802802, 4, 360, 0, 0),
(802802, 5, 360, 0, 0),
(802802, 6, 360, 0, 0);

INSERT INTO weenie_properties_attribute_2nd (object_Id, type, init_Level, level_From_C_P, c_P_Spent, current_Level)
VALUES
(802802, 1, 800, 0, 0, 800),
(802802, 2, 450, 0, 0, 450),
(802802, 3, 450, 0, 0, 450),
(802802, 4, 800, 0, 0, 800),
(802802, 5, 450, 0, 0, 450);

INSERT INTO weenie_properties_body_part (object_Id, key, d_Type, d_Val, d_Var, base_Armor)
VALUES
(802802, 0, 1, 30, 0, 400),
(802802, 1, 1, 30, 0, 400),
(802802, 2, 1, 30, 0, 400),
(802802, 3, 1, 30, 0, 400);

SET FOREIGN_KEY_CHECKS=1;
