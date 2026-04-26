DELETE FROM `weenie` WHERE `class_Id` = 802711;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802711, 'EndlessPlatinumScarabs', 38, '2023-06-25 05:53:48') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802711,   1,       2048) /* ItemType - Gem */
     , (802711,   3,         39) /* PaletteTemplate - Black */
     , (802711,   5,          5) /* EncumbranceVal */
     , (802711,   8,          5) /* Mass */
     , (802711,  11,          1) /* MaxStackSize */
     , (802711,  12,          1) /* StackSize */
     , (802711,  13,          5) /* StackUnitEncumbrance */
     , (802711,  14,          5) /* StackUnitMass */
     , (802711,  15,      15000) /* StackUnitValue */
     , (802711,  16,          8) /* ItemUseable - Contained */
     , (802711,  18,          0) /* UiEffects - Lightning */
     , (802711,  19,      15000) /* Value */
     , (802711,  33,          1) /* Bonded - Bonded */
     , (802711,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802711,  94,         16) /* TargetType - Creature */
     , (802711, 106,        325) /* ItemSpellcraft */
     , (802711, 107,      10000) /* ItemCurMana */
     , (802711, 108,      10000) /* ItemMaxMana */
     , (802711, 150,        103) /* HookPlacement - Hook */
     , (802711, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802711,  22, True ) /* Inscribable */
     , (802711,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802711,   1, 'Endless Platinum Scarabs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802711,   1,   33555445) /* Setup */
     , (802711,   3,  536870932) /* SoundTable */
     , (802711,   8,  100671084) /* Icon */
     , (802711,  22,  872415275) /* PhysicsEffectTable */
     , (802711,  50,  100671329) /* IconOverlay */
     , (802711,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802711, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8897 /* Prismatic Taper */, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Scarabs have been replenished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

