DELETE FROM `weenie` WHERE `class_Id` = 300178;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300178, 'testbuilding', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300178,   1,        128) /* ItemType - Misc */
     , (300178,   8,        500) /* Mass */
     , (300178,  16,          0) /* ItemUseable - Remote */
     , (300178,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300178,   1, True ) /* Stuck */
     , (300178,  11, False) /* IgnoreCollisions */
     , (300178,  12, True ) /* ReportCollisions */
     , (300178,  13, False) /* Ethereal */
     , (300178,  14, False) /* GravityStatus */
     , (300178,  19, True ) /* Attackable */
     , (300178,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300178,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300178,   1, 'testbuilding') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300178,   1,   33561484) /* Setup */;
