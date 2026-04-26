DELETE FROM `weenie` WHERE `class_Id` = 1000172;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000172, 'ActivePorticullisFireplace', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000172,   1,        128) /* ItemType - Misc */
     , (1000172,   8,        500) /* Mass */
     , (1000172,  16,          0) /* ItemUseable - Remote */
     , (1000172,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000172,   1, True ) /* Stuck */
     , (1000172,  11, False) /* IgnoreCollisions */
     , (1000172,  12, True ) /* ReportCollisions */
     , (1000172,  13, False) /* Ethereal */
     , (1000172,  14, False) /* GravityStatus */
     , (1000172,  19, True ) /* Attackable */
     , (1000172,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000172,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000172,   1, 'ActivePorticullisFireplace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000172,   1,   33557448) /* Setup */
     /* , (1000172,   2,  150994965) /* MotionTable */;
