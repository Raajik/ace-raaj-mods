DELETE FROM `weenie` WHERE `class_Id` = 1100082;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1100082, 'DreadIslandElementPortalGem', 38, '2023-06-07 08:46:59') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1100082,   1,       2048) /* ItemType - Gem */
     , (1100082,   3,         39) /* PaletteTemplate - Black */
     , (1100082,   5,          0) /* EncumbranceVal */
     , (1100082,   9,          0) /* ValidLocations - None */
     , (1100082,  11,          1) /* MaxStackSize */
     , (1100082,  12,          1) /* StackSize */
     , (1100082,  16,          8) /* ItemUseable - Contained */
     , (1100082,  18,          1) /* UiEffects - Magical */
     , (1100082,  19,          1) /* Value */
     , (1100082,  33,          1) /* Bonded - Bonded */
     , (1100082,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (1100082,  94,         16) /* TargetType - Creature */
     , (1100082, 114,          1) /* Attuned - Attuned */
     , (1100082, 150,        103) /* HookPlacement - Hook */
     , (1100082, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1100082,  22, True ) /* Inscribable */
     , (1100082,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1100082,   1, 'Element Island Portal Gem') /* Name */
     , (1100082,  16, 'Use this portal gem to teleport to the Element Island on Dread Island.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1100082,   1, 0x02000921) /* Setup */
     , (1100082,   3, 0x20000014) /* SoundTable */
     , (1100082,   6, 0x04000BEF) /* PaletteBase */
     , (1100082,   7, 0x1000010B) /* ClothingBase */
     , (1100082,   8, 0x06002370) /* Icon */
     , (1100082,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (1100082, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 36 /* InqIntStat */, 0, 1, NULL, 'Level_400_36', NULL, 400, 2147483647, NULL, NULL, NULL, NULL, 25 /* Level */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (1100082, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'Level_400_36', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xE6CE0102 /* 0xE6CE0102 [132.28932 45.19707 10.405] 0.005103 0 0 0.999987 */, 132.28932, 45.19707, 10.405, 0.005103, 0, 0, 0.999987);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (1100082, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'Level_400_36', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You are not powerful enough to use this portal gem.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

