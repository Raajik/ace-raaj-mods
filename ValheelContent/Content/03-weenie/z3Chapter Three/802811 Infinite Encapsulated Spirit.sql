DELETE FROM `weenie` WHERE `class_Id` = 802811;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802811, 'InfiniteEncapsulatedSpirits', 38, '2023-07-30 11:45:21') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802811,   1,       2048) /* ItemType - Gem */
     , (802811,   3,         39) /* PaletteTemplate - Black */
     , (802811,   5,          5) /* EncumbranceVal */
     , (802811,   8,          5) /* Mass */
     , (802811,  11,          1) /* MaxStackSize */
     , (802811,  12,          1) /* StackSize */
     , (802811,  13,          5) /* StackUnitEncumbrance */
     , (802811,  14,          5) /* StackUnitMass */
     , (802811,  15,      20000) /* StackUnitValue */
     , (802811,  16,          8) /* ItemUseable - Contained */
     , (802811,  18,          1) /* UiEffects - Magical */
     , (802811,  19,      20000) /* Value */
     , (802811,  33,          1) /* Bonded - Bonded */
     , (802811,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802811,  94,         16) /* TargetType - Creature */
     , (802811, 106,        325) /* ItemSpellcraft */
     , (802811, 107,      10000) /* ItemCurMana */
     , (802811, 108,      10000) /* ItemMaxMana */
     , (802811, 114,          1) /* Attuned - Attuned */
     , (802811, 150,        103) /* HookPlacement - Hook */
     , (802811, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802811,  22, True ) /* Inscribable */
     , (802811,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802811,   1, 'Infinite Encapsulated Spirit') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802811,   1, 0x02000179) /* Setup */
     , (802811,   3, 0x20000014) /* SoundTable */
     , (802811,   6, 0x04000BEF) /* PaletteBase */
     , (802811,   8,  100693036) /* Icon */
     , (802811,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802811, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49485 /* Encapsulated Spirit */, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have refilled your Encapsulated Spirits.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

