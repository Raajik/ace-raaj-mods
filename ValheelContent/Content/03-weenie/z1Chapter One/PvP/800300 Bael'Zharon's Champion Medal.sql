DELETE FROM `weenie` WHERE `class_Id` = 800300;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800300, 'pkweaponmedal', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800300,   1,       2048) /* ItemType - Gem */
     , (800300,   5,          5) /* EncumbranceVal */
     , (800300,   8,          5) /* Mass */
     , (800300,   9,          0) /* ValidLocations - None */
     , (800300,  11,          1) /* MaxStackSize */
     , (800300,  12,          1) /* StackSize */
     , (800300,  13,          5) /* StackUnitEncumbrance */
     , (800300,  14,          5) /* StackUnitMass */
     , (800300,  15,          1) /* StackUnitValue */
     , (800300,  16,          1) /* ItemUseable - No */
     , (800300,  19,          1) /* Value */
     , (800300,  33,          1) /* Bonded - Bonded */
     , (800300,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800300, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800300,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800300,   1, 'Bael''Zharon''s Champion Medal') /* Name */
     , (800300,  15, 'Turn this medal in to Bael''Zharon''s Forge Master.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800300,   1,   33557280) /* Setup */
     , (800300,   3,  536870932) /* SoundTable */
     , (800300,   6,   67111092) /* PaletteBase */
     , (800300,   7,  268436301) /* ClothingBase */
     , (800300,   8,  100672371) /* Icon */
     , (800300,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800300, 10 /* PickUp */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  68 /* PopUp */, 0.75, 1, NULL, 'Only the greatest of Bael''Zharon''s warriors can get this medal!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
