DELETE FROM `weenie` WHERE `class_Id` = 1000108;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000108, 'rocktest1', 1, '2020-01-08 07:59:44') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000108,   1,        128) /* ItemType - Misc */
     , (1000108,   8,        500) /* Mass */
     , (1000108,  19,          0) /* Value */
     , (1000108,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000108,   1, True ) /* Stuck */
     , (1000108,  11, True ) /* IgnoreCollisions */
     , (1000108,  12, True ) /* ReportCollisions */
     , (1000108,  13, False) /* Ethereal */
     , (1000108,  14, False) /* GravityStatus */
     , (1000108,  19, True ) /* Attackable */
     , (1000108,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000108,  39,     0.7) /* DefaultScale */
     , (1000108,  76,       0) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000108,   1, 'Rock') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000108,   1, 0x02001A45) /* Setup */
     , (1000108,   3, 0x2000008B) /* SoundTable */
     , (1000108,   8, 0x06001317) /* Icon */
     , (1000108,  22, 0x3400002B) /* PhysicsEffectTable */;
	 

