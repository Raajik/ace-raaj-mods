DELETE FROM `weenie` WHERE `class_Id` = 1000103;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000103, 'Grate Platform', 1, '2020-01-08 07:59:44') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000103,   1,        128) /* ItemType - Misc */
     , (1000103,   8,        500) /* Mass */
     , (1000103,  19,          0) /* Value */
     , (1000103,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000103,   1, True ) /* Stuck */
     , (1000103,  11, True ) /* IgnoreCollisions */
     , (1000103,  12, True ) /* ReportCollisions */
     , (1000103,  13, False) /* Ethereal */
     , (1000103,  14, False) /* GravityStatus */
     , (1000103,  18, True ) /* Visibility */
     , (1000103,  19, True ) /* Attackable */
     , (1000103,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000103,  39,     0.7) /* DefaultScale */
     , (1000103,  76,       0) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000103,   1, 'Grate Platform') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000103,   1, 0x020017BA) /* Setup */
     , (1000103,   3, 0x2000008B) /* SoundTable */
     , (1000103,   8, 0x06001317) /* Icon */
     , (1000103,  22, 0x3400002B) /* PhysicsEffectTable */;
	 

