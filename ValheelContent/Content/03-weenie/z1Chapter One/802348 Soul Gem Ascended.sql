DELETE FROM `weenie` WHERE `class_Id` = 802348;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802348, 'SoulGemNoShare', 38, '2023-04-07 08:32:10') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802348,   1,       2048) /* ItemType - Gem */
     , (802348,   3,         39) /* PaletteTemplate - Black */
     , (802348,   5,          5) /* EncumbranceVal */
     , (802348,   8,          5) /* Mass */
     , (802348,  11,          1) /* MaxStackSize */
     , (802348,  12,          1) /* StackSize */
     , (802348,  13,          5) /* StackUnitEncumbrance */
     , (802348,  14,          5) /* StackUnitMass */
     , (802348,  15,        500) /* StackUnitValue */
     , (802348,  16,          8) /* ItemUseable - Contained */
     , (802348,  18,         64) /* UiEffects - Lightning */
     , (802348,  19,        500) /* Value */
     , (802348,  33,          1) /* Bonded - Bonded */
     , (802348,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802348,  94,         16) /* TargetType - Creature */
     , (802348, 106,        325) /* ItemSpellcraft */
     , (802348, 107,      10000) /* ItemCurMana */
     , (802348, 108,      10000) /* ItemMaxMana */
     , (802348, 150,        103) /* HookPlacement - Hook */
     , (802348, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802348,  22, True ) /* Inscribable */
     , (802348,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802348,   1, 'Soul Gem Ascended') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802348,   1, 0x02000179) /* Setup */
     , (802348,   3, 0x20000014) /* SoundTable */
     , (802348,   6, 0x04000BEF) /* PaletteBase */
     , (802348,   8, 0x00006989) /* Icon */
     , (802348,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802348, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 62 /* AwardNoShareXP */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Success!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

