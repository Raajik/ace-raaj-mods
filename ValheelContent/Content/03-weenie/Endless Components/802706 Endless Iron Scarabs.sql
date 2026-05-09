DELETE FROM `weenie` WHERE `class_Id` = 802706;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802706, 'EndlessIronScarabs', 38, '2023-06-25 05:53:48') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802706,   1,       2048) /* ItemType - Gem */
     , (802706,   3,         39) /* PaletteTemplate - Black */
     , (802706,   5,          5) /* EncumbranceVal */
     , (802706,   8,          5) /* Mass */
     , (802706,  11,          1) /* MaxStackSize */
     , (802706,  12,          1) /* StackSize */
     , (802706,  13,          5) /* StackUnitEncumbrance */
     , (802706,  14,          5) /* StackUnitMass */
     , (802706,  15,       6000) /* StackUnitValue */
     , (802706,  16,          8) /* ItemUseable - Contained */
     , (802706,  18,          0) /* UiEffects - Lightning */
     , (802706,  19,       6000) /* Value */
     , (802706,  33,          1) /* Bonded - Bonded */
     , (802706,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802706,  94,         16) /* TargetType - Creature */
     , (802706, 106,        325) /* ItemSpellcraft */
     , (802706, 107,      10000) /* ItemCurMana */
     , (802706, 108,      10000) /* ItemMaxMana */
     , (802706, 150,        103) /* HookPlacement - Hook */
     , (802706, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802706,  22, True ) /* Inscribable */
     , (802706,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802706,   1, 'Endless Iron Scarabs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802706,   1,   33555445) /* Setup */
     , (802706,   3,  536870932) /* SoundTable */
     , (802706,   8,  100671082) /* Icon */
     , (802706,  22,  872415275) /* PhysicsEffectTable */
     , (802706,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802706, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 689 /* Prismatic Taper */, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Scarabs have been replenished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

