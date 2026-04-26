DELETE FROM `weenie` WHERE `class_Id` = 1000222;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000222, 'LargeInvisibleBarrierFence', 1, '2020-01-08 07:59:44') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000222,   1,        128) /* ItemType - Misc */
     , (1000222,   8,        500) /* Mass */
     , (1000222,  19,          0) /* Value */
     , (1000222,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000222,   1, True ) /* Stuck */
     , (1000222,  11, True ) /* IgnoreCollisions */
     , (1000222,  12, True ) /* ReportCollisions */
     , (1000222,  13, False) /* Ethereal */
     , (1000222,  14, False) /* GravityStatus */
     , (1000222,  19, True ) /* Attackable */
     , (1000222,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000222,  39,      20) /* DefaultScale */
     , (1000222,  76,       0) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000222,   1, 'Invisible Barrier') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000222,   1, 0x0200187D) /* Setup */
     , (1000222,   3, 0x2000008B) /* SoundTable */
     , (1000222,   8, 0x06001317) /* Icon */
     , (1000222,  22, 0x3400002B) /* PhysicsEffectTable */;
	 

