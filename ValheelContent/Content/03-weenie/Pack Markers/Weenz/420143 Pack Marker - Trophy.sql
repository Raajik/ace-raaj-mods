DELETE FROM `weenie` WHERE `class_Id` = 420143;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (420143, 'Packmarker Trophy', 44, '2022-07-06 12:51:44') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (420143,   1,       2048) /* ItemType - Gem */
     , (420143,   3,         14) /* PaletteTemplate - Red */
     , (420143,   5,          5) /* EncumbranceVal */
     , (420143,   8,          5) /* Mass */
     , (420143,   9,          0) /* ValidLocations - None */
     , (420143,  11,          1) /* MaxStackSize */
     , (420143,  12,          1) /* StackSize */
     , (420143,  13,          5) /* StackUnitEncumbrance */
     , (420143,  14,          5) /* StackUnitMass */
     , (420143,  15,       10) /* StackUnitValue */
     , (420143,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (420143,  18,          1) /* UiEffects */
     , (420143,  19,       10) /* Value */
     , (420143,  33,          1) /* Bonded - Bonded */
     , (420143,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (420143,  94,        512) /* TargetType */
     , (420143, 150,        103) /* HookPlacement */
     , (420143, 151,          1) /* HookType */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (420143,  22, True ) /* Inscribable */
     , (420143,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (420143,   1, 'Pack Marker - Trophy') /* Name */
     , (420143,  14, 'Use this on a Common pack to Mark it as a Trophy Pack') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (420143,   1, 0x02000151) /* Setup */
     , (420143,   3, 0x20000014) /* SoundTable */
     , (420143,   6, 0x04000BEF) /* PaletteBase */
     , (420143,   8, 0x0600109A) /* Icon */
     , (420143,  22, 0x3400002B) /* PhysicsEffectTable */
     , (420143,  50, 0x06002627) /* IconOverlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (420143, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3801 /* Shadow Touch */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

