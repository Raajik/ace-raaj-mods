DELETE FROM `weenie` WHERE `class_Id` = 1000154;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000154, '2StackedCrates', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000154,   1,        128) /* ItemType - Misc */
     , (1000154,   8,        500) /* Mass */
     , (1000154,  16,          0) /* ItemUseable - Remote */
     , (1000154,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000154,   1, True ) /* Stuck */
     , (1000154,  11, False) /* IgnoreCollisions */
     , (1000154,  12, True ) /* ReportCollisions */
     , (1000154,  13, False) /* Ethereal */
     , (1000154,  14, False) /* GravityStatus */
     , (1000154,  19, True ) /* Attackable */
     , (1000154,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000154,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000154,   1, '2StackedCrates') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000154,   1,   33555047) /* Setup */
     /* , (1000154,   2,  150994965) /* MotionTable */;
