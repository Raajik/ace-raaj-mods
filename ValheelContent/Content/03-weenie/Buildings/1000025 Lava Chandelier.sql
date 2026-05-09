DELETE FROM `weenie` WHERE `class_Id` = 1000025;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000025, 'Lava Chandelier', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000025,   1,        128) /* ItemType - Misc */
     , (1000025,   8,        500) /* Mass */
     , (1000025,  19,          0) /* Value */
     , (1000025,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000025,   1, True ) /* Stuck */
     , (1000025,  11, False) /* IgnoreCollisions */
     , (1000025,  12, True ) /* ReportCollisions */
     , (1000025,  13, False) /* Ethereal */
     , (1000025,  14, False) /* GravityStatus */
     , (1000025,  19, True ) /* Attackable */
     , (1000025,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000025,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000025,   1, 'Lava Chandelier') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000025,   1,   33555285) /* Setup */
     , (1000025,   3,  536870947) /* SoundTable */
     , (1000025,   8,  100668183) /* Icon */
     , (1000025,  22,  872415275) /* PhysicsEffectTable */;
