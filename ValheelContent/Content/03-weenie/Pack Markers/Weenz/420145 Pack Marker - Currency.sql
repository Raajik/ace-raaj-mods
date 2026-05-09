DELETE FROM `weenie` WHERE `class_Id` = 420145;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (420145, 'Packmarkercurrency', 44, '2022-07-06 02:27:06') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (420145,   1,       2048) /* ItemType - Gem */
     , (420145,   3,         14) /* PaletteTemplate - Red */
     , (420145,   5,          5) /* EncumbranceVal */
     , (420145,   8,          5) /* Mass */
     , (420145,   9,          0) /* ValidLocations - None */
     , (420145,  11,          1) /* MaxStackSize */
     , (420145,  12,          1) /* StackSize */
     , (420145,  13,          5) /* StackUnitEncumbrance */
     , (420145,  14,          5) /* StackUnitMass */
     , (420145,  15,       10) /* StackUnitValue */
     , (420145,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (420145,  18,          1) /* UiEffects */
     , (420145,  19,       10) /* Value */
     , (420145,  33,          1) /* Bonded - Bonded */
     , (420145,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (420145,  94,        512) /* TargetType */
     , (420145, 150,        103) /* HookPlacement */
     , (420145, 151,          1) /* HookType */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (420145,  22, True ) /* Inscribable */
     , (420145,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (420145,   1, 'Pack Marker - Currency') /* Name */
     , (420145,  14, 'Use this on a Common pack to Mark it as a Currency Pack') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (420145,   1, 0x02000151) /* Setup */
     , (420145,   3, 0x20000014) /* SoundTable */
     , (420145,   6, 0x04000BEF) /* PaletteBase */
     , (420145,   8, 0x0600109A) /* Icon */
     , (420145,  22, 0x3400002B) /* PhysicsEffectTable */
     , (420145,  50, 0x0600229F) /* IconOverlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (420145, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3801 /* Shadow Touch */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

