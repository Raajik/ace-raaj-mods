DELETE FROM `weenie` WHERE `class_Id` = 1000196;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000196, 'DoubleBookshelf', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000196,   1,        128) /* ItemType - Misc */
     , (1000196,   8,        500) /* Mass */
     , (1000196,  16,          0) /* ItemUseable - Remote */
     , (1000196,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000196,   1, True ) /* Stuck */
     , (1000196,  11, False) /* IgnoreCollisions */
     , (1000196,  12, True ) /* ReportCollisions */
     , (1000196,  13, False) /* Ethereal */
     , (1000196,  14, False) /* GravityStatus */
     , (1000196,  19, True ) /* Attackable */
     , (1000196,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000196,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000196,   1, 'DoubleBookshelf') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000196,   1,   33557590) /* Setup */
     /* , (1000196,   2,  150994965) /* MotionTable */;
