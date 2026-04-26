DELETE FROM `weenie` WHERE `class_Id` = 420140;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (420140, 'Packmarker Armor', 44, '2022-07-05 11:20:34') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (420140,   1,       2048) /* ItemType - Gem */
     , (420140,   3,         14) /* PaletteTemplate - Red */
     , (420140,   5,          5) /* EncumbranceVal */
     , (420140,   8,          5) /* Mass */
     , (420140,   9,          0) /* ValidLocations - None */
     , (420140,  11,          1) /* MaxStackSize */
     , (420140,  12,          1) /* StackSize */
     , (420140,  13,          5) /* StackUnitEncumbrance */
     , (420140,  14,          5) /* StackUnitMass */
     , (420140,  15,       10) /* StackUnitValue */
     , (420140,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (420140,  18,          1) /* UiEffects */
     , (420140,  19,       10) /* Value */
     , (420140,  33,          1) /* Bonded - Bonded */
     , (420140,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (420140,  94,        512) /* TargetType */
     , (420140, 150,        103) /* HookPlacement */
     , (420140, 151,          1) /* HookType */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (420140,  22, True ) /* Inscribable */
     , (420140,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (420140,   1, 'Pack Marker - Armor') /* Name */
     , (420140,  14, 'Use this on a Common pack to Mark it as a Armor Pack') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (420140,   1, 0x02000151) /* Setup */
     , (420140,   3, 0x20000014) /* SoundTable */
     , (420140,   6, 0x04000BEF) /* PaletteBase */
     , (420140,   8, 0x0600109A) /* Icon */
     , (420140,  22, 0x3400002B) /* PhysicsEffectTable */
     , (420140,  50, 0x06002267) /* IconOverlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (420140, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3801 /* Shadow Touch */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

