DELETE FROM `weenie` WHERE `class_Id` = 1000171;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000171, 'SandstoneForge', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000171,   1,        128) /* ItemType - Misc */
     , (1000171,   8,        500) /* Mass */
     , (1000171,  16,          0) /* ItemUseable - Remote */
     , (1000171,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000171,   1, True ) /* Stuck */
     , (1000171,  11, False) /* IgnoreCollisions */
     , (1000171,  12, True ) /* ReportCollisions */
     , (1000171,  13, False) /* Ethereal */
     , (1000171,  14, False) /* GravityStatus */
     , (1000171,  19, True ) /* Attackable */
     , (1000171,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000171,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000171,   1, 'SandstoneForge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000171,   1,   33555260) /* Setup */
     /* , (1000171,   2,  150994965) /* MotionTable */;
