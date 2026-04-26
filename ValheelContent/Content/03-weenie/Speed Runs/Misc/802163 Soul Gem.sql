DELETE FROM `weenie` WHERE `class_Id` = 802163;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802163, 'SoulGem2', 38, '2023-03-18 12:05:02') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802163,   1,       2048) /* ItemType - Gem */
     , (802163,   3,         39) /* PaletteTemplate - Black */
     , (802163,   5,          5) /* EncumbranceVal */
     , (802163,   8,          5) /* Mass */
     , (802163,  11,          1) /* MaxStackSize */
     , (802163,  12,          1) /* StackSize */
     , (802163,  13,          5) /* StackUnitEncumbrance */
     , (802163,  14,          5) /* StackUnitMass */
     , (802163,  15,        500) /* StackUnitValue */
     , (802163,  16,          8) /* ItemUseable - Contained */
     , (802163,  18,         64) /* UiEffects - Lightning */
     , (802163,  19,        500) /* Value */
     , (802163,  33,          1) /* Bonded - Bonded */
     , (802163,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802163,  94,         16) /* TargetType - Creature */
     , (802163, 106,        325) /* ItemSpellcraft */
     , (802163, 107,      10000) /* ItemCurMana */
     , (802163, 108,      10000) /* ItemMaxMana */
     , (802163, 150,        103) /* HookPlacement - Hook */
     , (802163, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802163,  22, True ) /* Inscribable */
     , (802163,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802163,   1, 'Soul Gem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802163,   1,   33554809) /* Setup */
     , (802163,   3,  536870932) /* SoundTable */
     , (802163,   6,   67111919) /* PaletteBase */
     , (802163,   8,      27017) /* Icon */
     , (802163,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802163,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   2 /* AwardXP */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'Success!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
