DELETE FROM `weenie` WHERE `class_Id` = 1000169;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000169, 'Pulpit', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000169,   1,        128) /* ItemType - Misc */
     , (1000169,   8,        500) /* Mass */
     , (1000169,  16,          0) /* ItemUseable - Remote */
     , (1000169,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000169,   1, True ) /* Stuck */
     , (1000169,  11, False) /* IgnoreCollisions */
     , (1000169,  12, True ) /* ReportCollisions */
     , (1000169,  13, False) /* Ethereal */
     , (1000169,  14, False) /* GravityStatus */
     , (1000169,  19, True ) /* Attackable */
     , (1000169,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000169,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000169,   1, 'Pulpit') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000169,   1,   33555197) /* Setup */
     /* , (1000169,   2,  150994965) /* MotionTable */;
