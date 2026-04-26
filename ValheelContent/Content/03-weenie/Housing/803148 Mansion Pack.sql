DELETE FROM `weenie` WHERE `class_Id` = 803148;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803148, 'Mansion Pack', 38, '2025-04-22 12:48:47') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803148,   1,       2048) /* ItemType - Gem */
     , (803148,   3,         39) /* PaletteTemplate - Black */
     , (803148,   5,          5) /* EncumbranceVal */
     , (803148,   8,          5) /* Mass */
     , (803148,  11,          1) /* MaxStackSize */
     , (803148,  12,          1) /* StackSize */
     , (803148,  13,          5) /* StackUnitEncumbrance */
     , (803148,  14,          5) /* StackUnitMass */
     , (803148,  15,         25) /* StackUnitValue */
     , (803148,  16,          8) /* ItemUseable - Contained */
     , (803148,  18,          8) /* UiEffects - Lightning */
     , (803148,  19,         25) /* Value */
     , (803148,  33,          1) /* Bonded - Bonded */
     , (803148,  92,         -1) /* Structure */
     , (803148,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803148,  94,         16) /* TargetType - Creature */
     , (803148, 106,        325) /* ItemSpellcraft */
     , (803148, 107,      10000) /* ItemCurMana */
     , (803148, 108,      10000) /* ItemMaxMana */
     , (803148, 150,        103) /* HookPlacement - Hook */
     , (803148, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803148,  22, True ) /* Inscribable */
     , (803148,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803148,   1, 'Mansion Pack') /* Name */
     , (803148,  33, 'ENTERQUEST') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803148,   1, 0x0200151D) /* Setup */
     , (803148,   3, 0x20000014) /* SoundTable */
     , (803148,   8, 0x0600102C) /* Icon */
     , (803148,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803148,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803148, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20630 /* Trade Note (250,000) */, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11710 /* Writ of Refuge */, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9511 /* Golden Gromnie */, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45875 /* Lucky Gold Letter */, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8425 /* Idol Gem */, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9413 /* Dread Mattekar Paw */, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 6, 18 /* DirectBroadcast */, 0, 1, NULL, 'Mansion Pack Downloaded!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

