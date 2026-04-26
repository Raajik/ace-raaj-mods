DELETE FROM `weenie` WHERE `class_Id` = 801795;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801795, 'Rating Stone', 44, '2022-12-29 10:56:51') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801795,   1,        128) /* ItemType - Misc */
     , (801795,   5,          1) /* EncumbranceVal */
     , (801795,   8,          5) /* Mass */
     , (801795,   9,          0) /* ValidLocations - None */
     , (801795,  11,          1) /* MaxStackSize */
     , (801795,  12,          1) /* StackSize */
     , (801795,  13,          1) /* StackUnitEncumbrance */
     , (801795,  14,          5) /* StackUnitMass */
     , (801795,  15,      10000) /* StackUnitValue */
     , (801795,  16,     524296) /* ItemUseable - SourceContainedTargetRemote */
     , (801795,  18,          1) /* UiEffects */
     , (801795,  19,          0) /* Value */
     , (801795,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801795,  94,          2) /* TargetType - Armor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801795,  22, True ) /* Inscribable */
     , (801795,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801795,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801795,   1, 'Rating Stone') /* Name */
     , (801795,  14, 'This item is to be used on Cursed Hollow Weapons to Purify them from their curse.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801795,   1, 0x02000921) /* Setup */
     , (801795,   3, 0x20000014) /* SoundTable */
     , (801795,   6, 0x04000BEF) /* PaletteBase */
     , (801795,   7, 0x1000010B) /* ClothingBase */
     , (801795,   8, 0x0600260F) /* Icon */
     , (801795,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801795,  52, 0x06003353) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801795, 8 /* Activation */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 0 /* Invalid */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

