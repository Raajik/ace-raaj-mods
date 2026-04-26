DELETE FROM `weenie` WHERE `class_Id` = 1000141;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000141, 'BagofGrain', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000141,   1,        128) /* ItemType - Misc */
     , (1000141,   8,        500) /* Mass */
     , (1000141,  16,          0) /* ItemUseable - Remote */
     , (1000141,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000141,   1, True ) /* Stuck */
     , (1000141,  11, False) /* IgnoreCollisions */
     , (1000141,  12, True ) /* ReportCollisions */
     , (1000141,  13, False) /* Ethereal */
     , (1000141,  14, False) /* GravityStatus */
     , (1000141,  19, True ) /* Attackable */
     , (1000141,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000141,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000141,   1, 'BagofGrain') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000141,   1,   33554817) /* Setup */
     /* , (1000141,   2,  150994965) /* MotionTable */;
