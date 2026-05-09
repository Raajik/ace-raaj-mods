DELETE FROM `weenie` WHERE `class_Id` = 802713;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802713, 'EndlessDiamondScarabs', 38, '2023-06-25 05:53:48') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802713,   1,       2048) /* ItemType - Gem */
     , (802713,   3,         39) /* PaletteTemplate - Black */
     , (802713,   5,          5) /* EncumbranceVal */
     , (802713,   8,          5) /* Mass */
     , (802713,  11,          1) /* MaxStackSize */
     , (802713,  12,          1) /* StackSize */
     , (802713,  13,          5) /* StackUnitEncumbrance */
     , (802713,  14,          5) /* StackUnitMass */
     , (802713,  15,      30000) /* StackUnitValue */
     , (802713,  16,          8) /* ItemUseable - Contained */
     , (802713,  18,          0) /* UiEffects - Lightning */
     , (802713,  19,      30000) /* Value */
     , (802713,  33,          1) /* Bonded - Bonded */
     , (802713,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802713,  94,         16) /* TargetType - Creature */
     , (802713, 106,        325) /* ItemSpellcraft */
     , (802713, 107,      10000) /* ItemCurMana */
     , (802713, 108,      10000) /* ItemMaxMana */
     , (802713, 150,        103) /* HookPlacement - Hook */
     , (802713, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802713,  22, True ) /* Inscribable */
     , (802713,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802713,   1, 'Endless Diamond Scarabs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802713,   1,   33555445) /* Setup */
     , (802713,   3,  536870932) /* SoundTable */
     , (802713,   8,  100671084) /* Icon */
     , (802713,  22,  872415275) /* PhysicsEffectTable */
     , (802713,  50,  100670697) /* IconOverlay */
     , (802713,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802713, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7299 /* Prismatic Taper */, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Scarabs have been replenished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

