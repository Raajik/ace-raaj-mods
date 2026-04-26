DELETE FROM `weenie` WHERE `class_Id` = 1000099;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000099, 'MetalFence', 1, '2020-01-08 07:59:44') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000099,   1,        128) /* ItemType - Misc */
     , (1000099,   8,        500) /* Mass */
     , (1000099,  19,          0) /* Value */
     , (1000099,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000099,   1, True ) /* Stuck */
     , (1000099,  11, True ) /* IgnoreCollisions */
     , (1000099,  12, True ) /* ReportCollisions */
     , (1000099,  13, False) /* Ethereal */
     , (1000099,  14, False) /* GravityStatus */
     , (1000099,  19, True ) /* Attackable */
     , (1000099,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000099,  39,       8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000099,   1, 'Metal Fence') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000099,   1, 0x0200187D) /* Setup */
     , (1000099,   3, 0x2000008B) /* SoundTable */
     , (1000099,   8, 0x06001317) /* Icon */
     , (1000099,  22, 0x3400002B) /* PhysicsEffectTable */;
	 

