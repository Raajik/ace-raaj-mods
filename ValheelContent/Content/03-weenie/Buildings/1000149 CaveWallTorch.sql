DELETE FROM `weenie` WHERE `class_Id` = 1000149;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000149, 'CaveWallTorch', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000149,   1,        128) /* ItemType - Misc */
     , (1000149,   8,        500) /* Mass */
     , (1000149,  16,          0) /* ItemUseable - Remote */
     , (1000149,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000149,   1, True ) /* Stuck */
     , (1000149,  11, False) /* IgnoreCollisions */
     , (1000149,  12, True ) /* ReportCollisions */
     , (1000149,  13, False) /* Ethereal */
     , (1000149,  14, False) /* GravityStatus */
     , (1000149,  19, True ) /* Attackable */
     , (1000149,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000149,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000149,   1, 'CaveWallTorch') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000149,   1,   33554934) /* Setup */
     /* , (1000149,   2,  150994965) /* MotionTable */;
