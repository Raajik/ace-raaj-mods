DELETE FROM `weenie` WHERE `class_Id` = 1000125;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000125, 'SwordStatue', 1, '2020-01-08 07:59:44') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000125,   1,        128) /* ItemType - Misc */
     , (1000125,   8,        500) /* Mass */
     , (1000125,  19,          0) /* Value */
     , (1000125,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000125,   1, True ) /* Stuck */
     , (1000125,  11, False) /* IgnoreCollisions */
     , (1000125,  12, True ) /* ReportCollisions */
     , (1000125,  13, False) /* Ethereal */
     , (1000125,  14, False) /* GravityStatus */
     , (1000125,  19, True ) /* Attackable */
     , (1000125,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000125,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000125,   1, 'SwordStatue') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000125,   1,   33561148) /* Setup */;
	 

