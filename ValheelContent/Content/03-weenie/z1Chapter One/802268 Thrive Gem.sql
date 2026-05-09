DELETE FROM `weenie` WHERE `class_Id` = 802268;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802268, 'Thrive Gem', 38, '2023-03-26 11:36:25') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802268,   1,       2048) /* ItemType - Gem */
     , (802268,   3,         39) /* PaletteTemplate - Black */
     , (802268,   5,          5) /* EncumbranceVal */
     , (802268,   8,          5) /* Mass */
     , (802268,  11,          1) /* MaxStackSize */
     , (802268,  12,          1) /* StackSize */
     , (802268,  13,          5) /* StackUnitEncumbrance */
     , (802268,  14,          5) /* StackUnitMass */
     , (802268,  15,         25) /* StackUnitValue */
     , (802268,  16,          8) /* ItemUseable - Contained */
     , (802268,  18,         64) /* UiEffects - Lightning */
     , (802268,  19,         25) /* Value */
     , (802268,  33,          1) /* Bonded - Bonded */
     , (802268,  92,         -1) /* Structure */
     , (802268,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802268,  94,         16) /* TargetType - Creature */
     , (802268, 106,        325) /* ItemSpellcraft */
     , (802268, 107,      10000) /* ItemCurMana */
     , (802268, 108,      10000) /* ItemMaxMana */
     , (802268, 150,        103) /* HookPlacement - Hook */
     , (802268, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802268,  22, True ) /* Inscribable */
     , (802268,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802268,   1, 'Thrive Gem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802268,   1, 0x02000179) /* Setup */
     , (802268,   3, 0x20000014) /* SoundTable */
     , (802268,   6, 0x04000BEF) /* PaletteBase */
     , (802268,   8, 0x00006987) /* Icon */
     , (802268,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802268, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Completed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

