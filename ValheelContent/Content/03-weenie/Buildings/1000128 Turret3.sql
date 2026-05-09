DELETE FROM `weenie` WHERE `class_Id` = 1000128;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000128, 'Turret3', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000128,   1,        128) /* ItemType - Misc */
     , (1000128,   8,        500) /* Mass */
     , (1000128,  16,          0) /* ItemUseable - Remote */
     , (1000128,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000128,   1, True ) /* Stuck */
     , (1000128,  11, False) /* IgnoreCollisions */
     , (1000128,  12, True ) /* ReportCollisions */
     , (1000128,  13, False) /* Ethereal */
     , (1000128,  14, False) /* GravityStatus */
     , (1000128,  19, True ) /* Attackable */
     , (1000128,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000128,  39,       0.25) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000128,   1, 'Turret3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000128,   1,   33561465) /* Setup */;
