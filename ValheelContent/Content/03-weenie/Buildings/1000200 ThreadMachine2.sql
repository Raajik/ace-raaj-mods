DELETE FROM `weenie` WHERE `class_Id` = 1000200;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000200, 'ThreadMachine2', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000200,   1,        128) /* ItemType - Misc */
     , (1000200,   8,        500) /* Mass */
     , (1000200,  16,          0) /* ItemUseable - Remote */
     , (1000200,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000200,   1, True ) /* Stuck */
     , (1000200,  11, False) /* IgnoreCollisions */
     , (1000200,  12, True ) /* ReportCollisions */
     , (1000200,  13, False) /* Ethereal */
     , (1000200,  14, False) /* GravityStatus */
     , (1000200,  19, True ) /* Attackable */
     , (1000200,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000200,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000200,   1, 'ThreadMachine2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000200,   1,   33557823) /* Setup */
     , (1000200,   2,  150995197) /* MotionTable */;
