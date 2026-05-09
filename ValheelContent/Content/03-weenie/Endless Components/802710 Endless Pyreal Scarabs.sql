DELETE FROM `weenie` WHERE `class_Id` = 802710;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802710, 'EndlessPyrealScarabs', 38, '2023-06-25 05:53:48') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802710,   1,       2048) /* ItemType - Gem */
     , (802710,   3,         39) /* PaletteTemplate - Black */
     , (802710,   5,          5) /* EncumbranceVal */
     , (802710,   8,          5) /* Mass */
     , (802710,  11,          1) /* MaxStackSize */
     , (802710,  12,          1) /* StackSize */
     , (802710,  13,          5) /* StackUnitEncumbrance */
     , (802710,  14,          5) /* StackUnitMass */
     , (802710,  15,      10000) /* StackUnitValue */
     , (802710,  16,          8) /* ItemUseable - Contained */
     , (802710,  18,          0) /* UiEffects - Lightning */
     , (802710,  19,      10000) /* Value */
     , (802710,  33,          1) /* Bonded - Bonded */
     , (802710,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802710,  94,         16) /* TargetType - Creature */
     , (802710, 106,        325) /* ItemSpellcraft */
     , (802710, 107,      10000) /* ItemCurMana */
     , (802710, 108,      10000) /* ItemMaxMana */
     , (802710, 150,        103) /* HookPlacement - Hook */
     , (802710, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802710,  22, True ) /* Inscribable */
     , (802710,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802710,   1, 'Endless Pyreal Scarabs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802710,   1,   33555445) /* Setup */
     , (802710,   3,  536870932) /* SoundTable */
     , (802710,   8,  100671084) /* Icon */
     , (802710,  22,  872415275) /* PhysicsEffectTable */
     , (802710,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802710, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 690 /* Prismatic Taper */, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Scarabs have been replenished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

