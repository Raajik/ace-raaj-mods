DELETE FROM `weenie` WHERE `class_Id` = 420146;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (420146, 'Packmarkermana', 44, '2022-07-06 02:39:28') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (420146,   1,       2048) /* ItemType - Gem */
     , (420146,   3,         14) /* PaletteTemplate - Red */
     , (420146,   5,          5) /* EncumbranceVal */
     , (420146,   8,          5) /* Mass */
     , (420146,   9,          0) /* ValidLocations - None */
     , (420146,  11,          1) /* MaxStackSize */
     , (420146,  12,          1) /* StackSize */
     , (420146,  13,          5) /* StackUnitEncumbrance */
     , (420146,  14,          5) /* StackUnitMass */
     , (420146,  15,       10) /* StackUnitValue */
     , (420146,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (420146,  18,          1) /* UiEffects */
     , (420146,  19,       10) /* Value */
     , (420146,  33,          1) /* Bonded - Bonded */
     , (420146,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (420146,  94,        512) /* TargetType */
     , (420146, 150,        103) /* HookPlacement */
     , (420146, 151,          1) /* HookType */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (420146,  22, True ) /* Inscribable */
     , (420146,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (420146,   1, 'Pack Marker - Mana Stone') /* Name */
     , (420146,  14, 'Use this on a Common pack to Mark it as a Mana Stone Pack') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (420146,   1, 0x02000151) /* Setup */
     , (420146,   3, 0x20000014) /* SoundTable */
     , (420146,   6, 0x04000BEF) /* PaletteBase */
     , (420146,   8, 0x0600109A) /* Icon */
     , (420146,  22, 0x3400002B) /* PhysicsEffectTable */
     , (420146,  50, 0x060032D3) /* IconOverlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (420146, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3801 /* Shadow Touch */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

