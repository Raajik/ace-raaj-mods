DELETE FROM `weenie` WHERE `class_Id` = 300179;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300179, 'testbuilding2', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300179,   1,        128) /* ItemType - Misc */
     , (300179,   8,        500) /* Mass */
     , (300179,  16,          0) /* ItemUseable - Remote */
     , (300179,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300179,   1, True ) /* Stuck */
     , (300179,  11, False) /* IgnoreCollisions */
     , (300179,  12, True ) /* ReportCollisions */
     , (300179,  13, False) /* Ethereal */
     , (300179,  14, False) /* GravityStatus */
     , (300179,  19, True ) /* Attackable */
     , (300179,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300179,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300179,   1, 'testbuilding2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300179,   1,   33561483) /* Setup */;
