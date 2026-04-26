DELETE FROM `weenie` WHERE `class_Id` = 802709;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802709, 'EndlessGoldScarabs', 38, '2023-06-25 05:53:48') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802709,   1,       2048) /* ItemType - Gem */
     , (802709,   3,         39) /* PaletteTemplate - Black */
     , (802709,   5,          5) /* EncumbranceVal */
     , (802709,   8,          5) /* Mass */
     , (802709,  11,          1) /* MaxStackSize */
     , (802709,  12,          1) /* StackSize */
     , (802709,  13,          5) /* StackUnitEncumbrance */
     , (802709,  14,          5) /* StackUnitMass */
     , (802709,  15,       9000) /* StackUnitValue */
     , (802709,  16,          8) /* ItemUseable - Contained */
     , (802709,  18,          0) /* UiEffects - Lightning */
     , (802709,  19,       9000) /* Value */
     , (802709,  33,          1) /* Bonded - Bonded */
     , (802709,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802709,  94,         16) /* TargetType - Creature */
     , (802709, 106,        325) /* ItemSpellcraft */
     , (802709, 107,      10000) /* ItemCurMana */
     , (802709, 108,      10000) /* ItemMaxMana */
     , (802709, 150,        103) /* HookPlacement - Hook */
     , (802709, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802709,  22, True ) /* Inscribable */
     , (802709,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802709,   1, 'Endless Gold Scarabs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802709,   1,   33555445) /* Setup */
     , (802709,   3,  536870932) /* SoundTable */
     , (802709,   8,  100671081) /* Icon */
     , (802709,  22,  872415275) /* PhysicsEffectTable */
     , (802709,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802709, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 687 /* Prismatic Taper */, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Scarabs have been replenished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

