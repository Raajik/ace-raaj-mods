DELETE FROM `weenie` WHERE `class_Id` = 1000102;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000102, 'InvisibleBarrierFence', 1, '2020-01-08 07:59:44') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000102,   1,        128) /* ItemType - Misc */
     , (1000102,   8,        500) /* Mass */
     , (1000102,  19,          0) /* Value */
     , (1000102,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000102,   1, True ) /* Stuck */
     , (1000102,  11, True ) /* IgnoreCollisions */
     , (1000102,  12, True ) /* ReportCollisions */
     , (1000102,  13, False) /* Ethereal */
     , (1000102,  14, False) /* GravityStatus */
     , (1000102,  19, True ) /* Attackable */
     , (1000102,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000102,  39,       8) /* DefaultScale */
     , (1000102,  76,       0) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000102,   1, 'Invisible Barrier') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000102,   1, 0x0200187D) /* Setup */
     , (1000102,   3, 0x2000008B) /* SoundTable */
     , (1000102,   8, 0x06001317) /* Icon */
     , (1000102,  22, 0x3400002B) /* PhysicsEffectTable */;
	 

