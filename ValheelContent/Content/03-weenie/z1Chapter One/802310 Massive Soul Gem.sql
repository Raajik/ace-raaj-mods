DELETE FROM `weenie` WHERE `class_Id` = 802310;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802310, 'SoulGem4', 38, '2023-03-31 08:41:29') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802310,   1,       2048) /* ItemType - Gem */
     , (802310,   3,         39) /* PaletteTemplate - Black */
     , (802310,   5,          5) /* EncumbranceVal */
     , (802310,   8,          5) /* Mass */
     , (802310,  11,          1) /* MaxStackSize */
     , (802310,  12,          1) /* StackSize */
     , (802310,  13,          5) /* StackUnitEncumbrance */
     , (802310,  14,          5) /* StackUnitMass */
     , (802310,  15,        500) /* StackUnitValue */
     , (802310,  16,          8) /* ItemUseable - Contained */
     , (802310,  18,         64) /* UiEffects - Lightning */
     , (802310,  19,        500) /* Value */
     , (802310,  33,          1) /* Bonded - Bonded */
     , (802310,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802310,  94,         16) /* TargetType - Creature */
     , (802310, 106,        325) /* ItemSpellcraft */
     , (802310, 107,      10000) /* ItemCurMana */
     , (802310, 108,      10000) /* ItemMaxMana */
     , (802310, 150,        103) /* HookPlacement - Hook */
     , (802310, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802310,  22, True ) /* Inscribable */
     , (802310,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802310,   1, 'Massive Soul Gem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802310,   1, 0x02000179) /* Setup */
     , (802310,   3, 0x20000014) /* SoundTable */
     , (802310,   6, 0x04000BEF) /* PaletteBase */
     , (802310,   8, 0x00006989) /* Icon */
     , (802310,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802310, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 2 /* AwardXP */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5100000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Success!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

