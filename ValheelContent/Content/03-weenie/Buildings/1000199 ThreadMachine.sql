DELETE FROM `weenie` WHERE `class_Id` = 1000199;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000199, 'ThreadMachine', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000199,   1,        128) /* ItemType - Misc */
     , (1000199,   8,        500) /* Mass */
     , (1000199,  16,          0) /* ItemUseable - Remote */
     , (1000199,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000199,   1, True ) /* Stuck */
     , (1000199,  11, False) /* IgnoreCollisions */
     , (1000199,  12, True ) /* ReportCollisions */
     , (1000199,  13, False) /* Ethereal */
     , (1000199,  14, False) /* GravityStatus */
     , (1000199,  19, True ) /* Attackable */
     , (1000199,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000199,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000199,   1, 'ThreadMachine') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000199,   1,   33557814) /* Setup */
     , (1000199,   2,  150995196) /* MotionTable */;
