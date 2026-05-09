DELETE FROM `weenie` WHERE `class_Id` = 803857;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803857, 'NoCornersTrap', 24, '2024-07-13 09:41:30') /* PressurePlate */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803857,   1,        128) /* ItemType - Misc */
     , (803857,   5,        500) /* EncumbranceVal */
     , (803857,   8,        250) /* Mass */
     , (803857,   9,          0) /* ValidLocations - None */
     , (803857,  16,          1) /* ItemUseable - No */
     , (803857,  19,       1000) /* Value */
     , (803857,  83,       2048) /* ActivationResponse - Emote */
     , (803857,  93,       1036) /* PhysicsState - Ethereal, ReportCollisions, Gravity */
     , (803857, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803857,   1, True ) /* Stuck */
     , (803857,  11, False) /* IgnoreCollisions */
     , (803857,  12, True ) /* ReportCollisions */
     , (803857,  13, True ) /* Ethereal */
     , (803857,  14, False) /* GravityStatus */
     , (803857,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803857,  11,      30) /* ResetInterval */
     , (803857,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803857,   1, 'NoCornersTrap') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803857,   1, 0x02000450) /* Setup */
     , (803857,   2, 0x09000021) /* MotionTable */
     , (803857,   8, 0x060012D2) /* Icon */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803857, 8 /* Activation */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x003F0434 /* 0x003F0434 [220.06126 -29.980032 12.004999] -0.999948 0 0 -0.010154 */, 220.06126, -29.980032, 12.004999, -0.999948, 0, 0, -0.010154);

