DELETE FROM `weenie` WHERE `class_Id` = 1000220;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000220, 'InvisibleBarrierFence2', 1, '2020-01-08 07:59:44') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000220,   1,        128) /* ItemType - Misc */
     , (1000220,   8,        500) /* Mass */
     , (1000220,  19,          0) /* Value */
     , (1000220,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000220,   1, True ) /* Stuck */
     , (1000220,  11, True ) /* IgnoreCollisions */
     , (1000220,  12, True ) /* ReportCollisions */
     , (1000220,  13, False) /* Ethereal */
     , (1000220,  14, False) /* GravityStatus */
     , (1000220,  19, True ) /* Attackable */
     , (1000220,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000220,  39,       4) /* DefaultScale */
     , (1000220,  76,       1) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000220,   1, 'Invisible Barrier2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000220,   1, 0x0200187D) /* Setup */
     , (1000220,   3, 0x2000008B) /* SoundTable */
     , (1000220,   8, 0x06001317) /* Icon */
     , (1000220,  22, 0x3400002B) /* PhysicsEffectTable */;
	 

