-- Swayss (810002) - Undead skill reset NPC
-- No cost, no timer — identical functionality to Fianhe minus the MMD/luminance requirements and 30-day cooldown.

INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES (810002, 'swayss_undead_skill_reset', 12, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

-- Ints: NPC / Creature properties
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (810002, 1, 16) ON DUPLICATE KEY UPDATE value = VALUES(value); -- ItemType: Creature
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (810002, 2, 19) ON DUPLICATE KEY UPDATE value = VALUES(value); -- CreatureType: Undead
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (810002, 16, 32) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (810002, 25, 3) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (810002, 27, 0) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (810002, 93, 2098200) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (810002, 126, 125) ON DUPLICATE KEY UPDATE value = VALUES(value);

-- String: Name
INSERT INTO weenie_properties_string (object_Id, type, value) VALUES (810002, 1, 'Swayss') ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_string (object_Id, type, value) VALUES (810002, 3, 'Male') ON DUPLICATE KEY UPDATE value = VALUES(value);

-- Float: basic NPC scales / speeds
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 1, 5) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 3, 0.16) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 4, 5) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 5, 1) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 11, 300) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 13, 0.9) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 14, 1) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 15, 1.1) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 16, 0.4) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 17, 0.4) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 18, 1) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 19, 0.6) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 37, 0.9) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 38, 1.35) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 54, 3) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810002, 125, 1) ON DUPLICATE KEY UPDATE value = VALUES(value);

-- Bool
INSERT INTO weenie_properties_bool (object_Id, type, value) VALUES (810002, 1, True) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_bool (object_Id, type, value) VALUES (810002, 12, True) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_bool (object_Id, type, value) VALUES (810002, 13, False) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_bool (object_Id, type, value) VALUES (810002, 19, False) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_bool (object_Id, type, value) VALUES (810002, 39, True) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_bool (object_Id, type, value) VALUES (810002, 41, True) ON DUPLICATE KEY UPDATE value = VALUES(value);

-- DID: Shikken Moriyaki (72805) appearance
INSERT INTO weenie_properties_d_i_d (object_Id, type, value) VALUES (810002, 1, 33561478) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_d_i_d (object_Id, type, value) VALUES (810002, 2, 150994945) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_d_i_d (object_Id, type, value) VALUES (810002, 3, 536870942) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_d_i_d (object_Id, type, value) VALUES (810002, 4, 805306368) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_d_i_d (object_Id, type, value) VALUES (810002, 6, 67108990) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_d_i_d (object_Id, type, value) VALUES (810002, 7, 268437548) ON DUPLICATE KEY UPDATE value = VALUES(value);
INSERT INTO weenie_properties_d_i_d (object_Id, type, value) VALUES (810002, 8, 100671323) ON DUPLICATE KEY UPDATE value = VALUES(value);

-- Body parts (default humanoid)
INSERT IGNORE INTO weenie_properties_body_part (object_Id, `key`, d_Type, d_Val, d_Var, base_Armor, armor_Vs_Slash, armor_Vs_Pierce, armor_Vs_Bludgeon, armor_Vs_Cold, armor_Vs_Fire, armor_Vs_Acid, armor_Vs_Electric, armor_Vs_Nether, b_h, h_l_f, m_l_f, l_l_f, h_r_f, m_r_f, l_r_f, h_l_b, m_l_b, l_l_b, h_r_b, m_r_b, l_r_b) VALUES (810002, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.33, 0, 0, 0.33, 0, 0, 0.33, 0, 0, 0.33, 0, 0);
INSERT IGNORE INTO weenie_properties_body_part (object_Id, `key`, d_Type, d_Val, d_Var, base_Armor, armor_Vs_Slash, armor_Vs_Pierce, armor_Vs_Bludgeon, armor_Vs_Cold, armor_Vs_Fire, armor_Vs_Acid, armor_Vs_Electric, armor_Vs_Nether, b_h, h_l_f, m_l_f, l_l_f, h_r_f, m_r_f, l_r_f, h_l_b, m_l_b, l_l_b, h_r_b, m_r_b, l_r_b) VALUES (810002, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0.44, 0.17, 0, 0.44, 0.17, 0, 0.44, 0.17, 0, 0.44, 0.17, 0);
INSERT IGNORE INTO weenie_properties_body_part (object_Id, `key`, d_Type, d_Val, d_Var, base_Armor, armor_Vs_Slash, armor_Vs_Pierce, armor_Vs_Bludgeon, armor_Vs_Cold, armor_Vs_Fire, armor_Vs_Acid, armor_Vs_Electric, armor_Vs_Nether, b_h, h_l_f, m_l_f, l_l_f, h_r_f, m_r_f, l_r_f, h_l_b, m_l_b, l_l_b, h_r_b, m_r_b, l_r_b) VALUES (810002, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0.17, 0, 0, 0.17, 0, 0, 0.17, 0, 0, 0.17, 0);
INSERT IGNORE INTO weenie_properties_body_part (object_Id, `key`, d_Type, d_Val, d_Var, base_Armor, armor_Vs_Slash, armor_Vs_Pierce, armor_Vs_Bludgeon, armor_Vs_Cold, armor_Vs_Fire, armor_Vs_Acid, armor_Vs_Electric, armor_Vs_Nether, b_h, h_l_f, m_l_f, l_l_f, h_r_f, m_r_f, l_r_f, h_l_b, m_l_b, l_l_b, h_r_b, m_r_b, l_r_b) VALUES (810002, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.23, 0.03, 0, 0.23, 0.03, 0, 0.23, 0.03, 0, 0.23, 0.03, 0);
INSERT IGNORE INTO weenie_properties_body_part (object_Id, `key`, d_Type, d_Val, d_Var, base_Armor, armor_Vs_Slash, armor_Vs_Pierce, armor_Vs_Bludgeon, armor_Vs_Cold, armor_Vs_Fire, armor_Vs_Acid, armor_Vs_Electric, armor_Vs_Nether, b_h, h_l_f, m_l_f, l_l_f, h_r_f, m_r_f, l_r_f, h_l_b, m_l_b, l_l_b, h_r_b, m_r_b, l_r_b) VALUES (810002, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0.3, 0, 0, 0.3, 0, 0, 0.3, 0, 0, 0.3, 0);
INSERT IGNORE INTO weenie_properties_body_part (object_Id, `key`, d_Type, d_Val, d_Var, base_Armor, armor_Vs_Slash, armor_Vs_Pierce, armor_Vs_Bludgeon, armor_Vs_Cold, armor_Vs_Fire, armor_Vs_Acid, armor_Vs_Electric, armor_Vs_Nether, b_h, h_l_f, m_l_f, l_l_f, h_r_f, m_r_f, l_r_f, h_l_b, m_l_b, l_l_b, h_r_b, m_r_b, l_r_b) VALUES (810002, 5, 4, 2, 0.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0.2, 0, 0, 0.2, 0, 0, 0.2, 0, 0, 0.2, 0);
INSERT IGNORE INTO weenie_properties_body_part (object_Id, `key`, d_Type, d_Val, d_Var, base_Armor, armor_Vs_Slash, armor_Vs_Pierce, armor_Vs_Bludgeon, armor_Vs_Cold, armor_Vs_Fire, armor_Vs_Acid, armor_Vs_Electric, armor_Vs_Nether, b_h, h_l_f, m_l_f, l_l_f, h_r_f, m_r_f, l_r_f, h_l_b, m_l_b, l_l_b, h_r_b, m_r_b, l_r_b) VALUES (810002, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0.13, 0.18, 0, 0.13, 0.18, 0, 0.13, 0.18, 0, 0.13, 0.18);
INSERT IGNORE INTO weenie_properties_body_part (object_Id, `key`, d_Type, d_Val, d_Var, base_Armor, armor_Vs_Slash, armor_Vs_Pierce, armor_Vs_Bludgeon, armor_Vs_Cold, armor_Vs_Fire, armor_Vs_Acid, armor_Vs_Electric, armor_Vs_Nether, b_h, h_l_f, m_l_f, l_l_f, h_r_f, m_r_f, l_r_f, h_l_b, m_l_b, l_l_b, h_r_b, m_r_b, l_r_b) VALUES (810002, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0.6, 0, 0, 0.6, 0, 0, 0.6, 0, 0, 0.6);
INSERT IGNORE INTO weenie_properties_body_part (object_Id, `key`, d_Type, d_Val, d_Var, base_Armor, armor_Vs_Slash, armor_Vs_Pierce, armor_Vs_Bludgeon, armor_Vs_Cold, armor_Vs_Fire, armor_Vs_Acid, armor_Vs_Electric, armor_Vs_Nether, b_h, h_l_f, m_l_f, l_l_f, h_r_f, m_r_f, l_r_f, h_l_b, m_l_b, l_l_b, h_r_b, m_r_b, l_r_b) VALUES (810002, 8, 4, 2, 0.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0.22, 0, 0, 0.22, 0, 0, 0.22, 0, 0, 0.22);

-- ==========================================
-- EMOTE TREE: Free unlimited skill reset
-- ==========================================

-- Heartbeat dialogue (repeatable)
INSERT IGNORE INTO weenie_properties_emote (id, object_Id, category, probability) VALUES (93155, 810002, 2, 0.8);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, message)
    VALUES (93155, 0, 10, 0, 1, 'The cycle of undeath taught me that nothing is permanent — not even your talents. I can strip them away and let you begin anew.');
INSERT IGNORE INTO weenie_properties_emote (id, object_Id, category, probability) VALUES (93156, 810002, 2, 0.8);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, message)
    VALUES (93156, 0, 10, 0, 1, 'The grave took all I was. You have the chance to choose again. Shall we?');

-- Use → InqYesNo confirmation (like Fianhe)
INSERT IGNORE INTO weenie_properties_emote (id, object_Id, category, probability) VALUES (93157, 810002, 7, 1);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, message, test_String)
    VALUES (93157, 0, 75, 0, 1, 'Would you like to redistribute your skills?', 'FreeRedistribute');
-- Note: message=popup text, test_String=routing quest key (FreeRedistribute)

-- On Yes (TestSuccess "FreeRedistribute"): untrain all skills
INSERT IGNORE INTO weenie_properties_emote (id, object_Id, category, probability, quest) VALUES (93158, 810002, 22, 1, 'FreeRedistribute');
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 0, 110, 0, 1, 1, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 1, 110, 0, 1, 2, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 2, 110, 0, 1, 3, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 3, 110, 0, 1, 4, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 4, 110, 0, 1, 5, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 5, 110, 0, 1, 6, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 6, 110, 0, 1, 7, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 7, 110, 0, 1, 8, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 8, 110, 0, 1, 9, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 9, 110, 0, 1, 10, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 10, 110, 0, 1, 11, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 11, 110, 0, 1, 12, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 12, 110, 0, 1, 13, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 13, 110, 0, 1, 14, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 14, 110, 0, 1, 15, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 15, 110, 0, 1, 16, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 16, 110, 0, 1, 17, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 17, 110, 0, 1, 18, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 18, 110, 0, 1, 19, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 19, 110, 0, 1, 20, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 20, 110, 0, 1, 21, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 21, 110, 0, 1, 22, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 22, 110, 0, 1, 23, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 23, 110, 0, 1, 24, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 24, 110, 0, 1, 25, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 25, 110, 0, 1, 26, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 26, 110, 0, 1, 27, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 27, 110, 0, 1, 28, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 28, 110, 0, 1, 29, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 29, 110, 0, 1, 30, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 30, 110, 0, 1, 31, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 31, 110, 0, 1, 32, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 32, 110, 0, 1, 33, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 33, 110, 0, 1, 34, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 34, 110, 0, 1, 35, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 35, 110, 0, 1, 36, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 36, 110, 0, 1, 37, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 37, 110, 0, 1, 38, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 38, 110, 0, 1, 39, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 39, 110, 0, 1, 40, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 40, 110, 0, 1, 41, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 41, 110, 0, 1, 42, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 42, 110, 0, 1, 43, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 43, 110, 0, 1, 44, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 44, 110, 0, 1, 45, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 45, 110, 0, 1, 46, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 46, 110, 0, 1, 47, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 47, 110, 0, 1, 48, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 48, 110, 0, 1, 49, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 49, 110, 0, 1, 50, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 50, 110, 0, 1, 51, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 51, 110, 0, 1, 52, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 52, 110, 0, 1, 53, NULL);
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, stat, message)
    VALUES (93158, 53, 110, 0, 1, 54, NULL);

-- Success message after all skills untrained
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, message)
    VALUES (93158, 54, 18, 0.5, 1, 'Your skills have been redistributed.');

-- On No (TestFailure "FreeRedistribute")
INSERT IGNORE INTO weenie_properties_emote (id, object_Id, category, probability, quest) VALUES (93159, 810002, 23, 1, 'FreeRedistribute');
INSERT IGNORE INTO weenie_properties_emote_action (emote_Id, `order`, type, delay, extent, message)
    VALUES (93159, 0, 10, 1, 1, 'Let me know if you change your mind.');

-- Repair InqYesNo (75): message = popup, test_String = routing key. Swapped or empty message shows
-- "FreeRedistribute" in the client. INSERT IGNORE never fixes rows already wrong — force canonical text.
UPDATE weenie_properties_emote_action a
INNER JOIN weenie_properties_emote e ON e.id = a.emote_Id
SET a.message = 'Would you like to redistribute your skills?', a.test_String = 'FreeRedistribute'
WHERE e.object_Id = 810002
  AND a.emote_Id = 93157
  AND a.`order` = 0
  AND a.type = 75
  AND (
    LOWER(TRIM(COALESCE(a.message, ''))) = 'freeredistribute'
    OR a.message = 'FreeRedistribute'
    OR a.test_String = 'Would you like to redistribute your skills?'
    OR (TRIM(COALESCE(a.message, '')) = '' AND TRIM(COALESCE(a.test_String, '')) <> '')
  );