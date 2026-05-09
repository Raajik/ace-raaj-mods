DELETE FROM `weenie` WHERE `class_Id` = 1000155;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000155, 'TatteredSleepingMat', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000155,   1,        128) /* ItemType - Misc */
     , (1000155,   8,        500) /* Mass */
     , (1000155,  16,          0) /* ItemUseable - Remote */
     , (1000155,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000155,   1, True ) /* Stuck */
     , (1000155,  11, False) /* IgnoreCollisions */
     , (1000155,  12, True ) /* ReportCollisions */
     , (1000155,  13, False) /* Ethereal */
     , (1000155,  14, False) /* GravityStatus */
     , (1000155,  19, True ) /* Attackable */
     , (1000155,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000155,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000155,   1, 'TatteredSleepingMat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000155,   1,   33555056) /* Setup */
     /* , (1000155,   2,  150994965) /* MotionTable */;
