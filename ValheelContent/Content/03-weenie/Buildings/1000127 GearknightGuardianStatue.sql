DELETE FROM `weenie` WHERE `class_Id` = 1000127;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000127, 'GearknightGuardianStatue', 1, '2020-01-08 07:59:44') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000127,   1,        128) /* ItemType - Misc */
     , (1000127,   8,        500) /* Mass */
     , (1000127,  19,          0) /* Value */
     , (1000127,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000127,   1, True ) /* Stuck */
     , (1000127,  11, False) /* IgnoreCollisions */
     , (1000127,  12, True ) /* ReportCollisions */
     , (1000127,  13, False) /* Ethereal */
     , (1000127,  14, False) /* GravityStatus */
     , (1000127,  19, True ) /* Attackable */
     , (1000127,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000127,  39,       8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000127,   1, 'GearknightGuardianStatue') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000127,   1,   33560861) /* Setup */;
	 

