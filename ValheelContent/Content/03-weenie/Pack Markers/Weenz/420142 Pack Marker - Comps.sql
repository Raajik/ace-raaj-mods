DELETE FROM `weenie` WHERE `class_Id` = 420142;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (420142, 'Packmarker Comps', 44, '2022-07-06 12:19:02') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (420142,   1,       2048) /* ItemType - Gem */
     , (420142,   3,         14) /* PaletteTemplate - Red */
     , (420142,   5,          5) /* EncumbranceVal */
     , (420142,   8,          5) /* Mass */
     , (420142,   9,          0) /* ValidLocations - None */
     , (420142,  11,          1) /* MaxStackSize */
     , (420142,  12,          1) /* StackSize */
     , (420142,  13,          5) /* StackUnitEncumbrance */
     , (420142,  14,          5) /* StackUnitMass */
     , (420142,  15,       10) /* StackUnitValue */
     , (420142,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (420142,  18,          1) /* UiEffects */
     , (420142,  19,       10) /* Value */
     , (420142,  33,          1) /* Bonded - Bonded */
     , (420142,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (420142,  94,        512) /* TargetType */
     , (420142, 150,        103) /* HookPlacement */
     , (420142, 151,          1) /* HookType */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (420142,  22, True ) /* Inscribable */
     , (420142,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (420142,   1, 'Pack Marker - Comps') /* Name */
     , (420142,  14, 'Use this on a Common pack to Mark it as a Component Pack') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (420142,   1, 0x02000151) /* Setup */
     , (420142,   3, 0x20000014) /* SoundTable */
     , (420142,   6, 0x04000BEF) /* PaletteBase */
     , (420142,   8, 0x0600109A) /* Icon */
     , (420142,  22, 0x3400002B) /* PhysicsEffectTable */
     , (420142,  50, 0x0600140A) /* IconOverlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (420142, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3801 /* Shadow Touch */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

