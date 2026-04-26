DELETE FROM `weenie` WHERE `class_Id` = 1000120;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000120, 'Tall Rock 1', 1, '2020-01-08 07:59:44') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000120,   1,        128) /* ItemType - Misc */
     , (1000120,   8,        500) /* Mass */
     , (1000120,  19,          0) /* Value */
     , (1000120,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000120,   1, True ) /* Stuck */
     , (1000120,  11, True ) /* IgnoreCollisions */
     , (1000120,  12, True ) /* ReportCollisions */
     , (1000120,  13, False) /* Ethereal */
     , (1000120,  14, False) /* GravityStatus */
     , (1000120,  19, True ) /* Attackable */
     , (1000120,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000120,  39,       1) /* DefaultScale */
     , (1000120,  76,       0) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000120,   1, 'Tall Rock') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000120,   1, 0x020006D0) /* Setup */
     , (1000120,   3, 0x2000008B) /* SoundTable */
     , (1000120,   8, 0x06001317) /* Icon */
     , (1000120,  22, 0x3400002B) /* PhysicsEffectTable */;
	 

