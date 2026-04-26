DELETE FROM `weenie` WHERE `class_Id` = 300180;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300180, 'testbuilding3', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300180,   1,        128) /* ItemType - Misc */
     , (300180,   8,        500) /* Mass */
     , (300180,  16,          0) /* ItemUseable - Remote */
     , (300180,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300180,   1, True ) /* Stuck */
     , (300180,  11, False) /* IgnoreCollisions */
     , (300180,  12, True ) /* ReportCollisions */
     , (300180,  13, False) /* Ethereal */
     , (300180,  14, False) /* GravityStatus */
     , (300180,  19, True ) /* Attackable */
     , (300180,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300180,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300180,   1, 'testbuilding3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300180,   1,   33561482) /* Setup */;
