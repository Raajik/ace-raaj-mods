DELETE FROM `weenie` WHERE `class_Id` = 802707;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802707, 'EndlessCopperScarabs', 38, '2023-06-25 05:53:48') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802707,   1,       2048) /* ItemType - Gem */
     , (802707,   3,         39) /* PaletteTemplate - Black */
     , (802707,   5,          5) /* EncumbranceVal */
     , (802707,   8,          5) /* Mass */
     , (802707,  11,          1) /* MaxStackSize */
     , (802707,  12,          1) /* StackSize */
     , (802707,  13,          5) /* StackUnitEncumbrance */
     , (802707,  14,          5) /* StackUnitMass */
     , (802707,  15,       7500) /* StackUnitValue */
     , (802707,  16,          8) /* ItemUseable - Contained */
     , (802707,  18,          0) /* UiEffects - Lightning */
     , (802707,  19,       7500) /* Value */
     , (802707,  33,          1) /* Bonded - Bonded */
     , (802707,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802707,  94,         16) /* TargetType - Creature */
     , (802707, 106,        325) /* ItemSpellcraft */
     , (802707, 107,      10000) /* ItemCurMana */
     , (802707, 108,      10000) /* ItemMaxMana */
     , (802707, 150,        103) /* HookPlacement - Hook */
     , (802707, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802707,  22, True ) /* Inscribable */
     , (802707,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802707,   1, 'Endless Copper Scarabs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802707,   1,   33555445) /* Setup */
     , (802707,   3,  536870932) /* SoundTable */
     , (802707,   8,  100671079) /* Icon */
     , (802707,  22,  872415275) /* PhysicsEffectTable */
     , (802707,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802707, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 686 /* Prismatic Taper */, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Scarabs have been replenished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

