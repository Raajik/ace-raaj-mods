DELETE FROM `weenie` WHERE `class_Id` = 803042;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803042, 'Kilgars Box', 38, '2023-10-31 09:37:21') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803042,   1,       2048) /* ItemType - Gem */
     , (803042,   3,         39) /* PaletteTemplate - Black */
     , (803042,   5,          5) /* EncumbranceVal */
     , (803042,   8,          5) /* Mass */
     , (803042,  11,          1) /* MaxStackSize */
     , (803042,  12,          1) /* StackSize */
     , (803042,  13,          5) /* StackUnitEncumbrance */
     , (803042,  14,          5) /* StackUnitMass */
     , (803042,  15,        500) /* StackUnitValue */
     , (803042,  16,          8) /* ItemUseable - Contained */
     , (803042,  18,         64) /* UiEffects - Lightning */
     , (803042,  19,      40000) /* Value */
     , (803042,  33,          1) /* Bonded - Bonded */
     , (803042,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803042,  94,         16) /* TargetType - Creature */
     , (803042, 106,        325) /* ItemSpellcraft */
     , (803042, 107,      10000) /* ItemCurMana */
     , (803042, 108,      10000) /* ItemMaxMana */
     , (803042, 150,        103) /* HookPlacement - Hook */
     , (803042, 151,         11) /* HookType - Floor, Wall, Yard */
     , (803042, 280,        550) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803042,  22, True ) /* Inscribable */
     , (803042,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803042,   1, 'Kilgar''s Box') /* Name */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803042, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803042,   1, 0x020009E1) /* Setup */
     , (803042,   3, 0x20000014) /* SoundTable */
     , (803042,   8, 0x06001F69) /* Icon */
     , (803042,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803042, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43951 /* Deadly Prismatic Arrow */, 50000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

