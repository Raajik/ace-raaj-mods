DELETE FROM `weenie` WHERE `class_Id` = 300181;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300181, 'testbuilding4', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300181,   1,        128) /* ItemType - Misc */
     , (300181,   8,        500) /* Mass */
     , (300181,  16,          0) /* ItemUseable - Remote */
     , (300181,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300181,   1, True ) /* Stuck */
     , (300181,  11, False) /* IgnoreCollisions */
     , (300181,  12, True ) /* ReportCollisions */
     , (300181,  13, False) /* Ethereal */
     , (300181,  14, False) /* GravityStatus */
     , (300181,  19, True ) /* Attackable */
     , (300181,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300181,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300181,   1, 'testbuilding4') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300181,   1,   33561481) /* Setup */;
