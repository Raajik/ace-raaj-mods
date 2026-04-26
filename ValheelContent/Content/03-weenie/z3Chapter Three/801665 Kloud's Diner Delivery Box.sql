DELETE FROM `weenie` WHERE `class_Id` = 801665;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801665, 'Klouds Diner Delivery Box', 38, '2022-12-06 10:12:51') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801665,   1,        128) /* ItemType - Misc */
     , (801665,   5,          1) /* EncumbranceVal */
     , (801665,  11,          1) /* MaxStackSize */
     , (801665,  12,          1) /* StackSize */
     , (801665,  13,          1) /* StackUnitEncumbrance */
     , (801665,  15,          2) /* StackUnitValue */
     , (801665,  16,          8) /* ItemUseable - Contained */
     , (801665,  19,          2) /* Value */
     , (801665,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801665,  94,         16) /* TargetType - Creature */
     , (801665, 151,          1) /* HookType - Floor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801665,  22, True ) /* Inscribable */
     , (801665,  63, False ) /* UnlimitedUse */
     , (801665,  90, True ) /* NpcInteractsSilently */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801665,  39,    0.25) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801665,   1, 'Kloud''s Diner Delivery Box') /* Name */
     , (801665,  14, 'Open this dinner box for 50 yummy HoltBurgers.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801665,   1,   33560155) /* Setup */
     , (801665,   3,  536870932) /* SoundTable */
     , (801665,   8,      27367) /* Icon */
     , (801665,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801665,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 801662 /* Super Duper Holtburger */, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
