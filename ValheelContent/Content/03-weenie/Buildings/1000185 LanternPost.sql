DELETE FROM `weenie` WHERE `class_Id` = 1000185;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000185, 'LanternPost', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000185,   1,        128) /* ItemType - Misc */
     , (1000185,   8,        500) /* Mass */
     , (1000185,  16,          0) /* ItemUseable - Remote */
     , (1000185,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000185,   1, True ) /* Stuck */
     , (1000185,  11, False) /* IgnoreCollisions */
     , (1000185,  12, True ) /* ReportCollisions */
     , (1000185,  13, False) /* Ethereal */
     , (1000185,  14, False) /* GravityStatus */
     , (1000185,  19, True ) /* Attackable */
     , (1000185,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000185,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000185,   1, 'LanternPost') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000185,   1,   33556229) /* Setup */
     /* , (1000185,   2,  150994965) /* MotionTable */;
