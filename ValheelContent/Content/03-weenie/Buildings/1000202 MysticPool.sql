DELETE FROM `weenie` WHERE `class_Id` = 1000202;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000202, 'MysticPool', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000202,   1,        128) /* ItemType - Misc */
     , (1000202,   8,        500) /* Mass */
     , (1000202,  16,          0) /* ItemUseable - Remote */
     , (1000202,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000202,   1, True ) /* Stuck */
     , (1000202,  11, False) /* IgnoreCollisions */
     , (1000202,  12, True ) /* ReportCollisions */
     , (1000202,  13, False) /* Ethereal */
     , (1000202,  14, False) /* GravityStatus */
     , (1000202,  19, True ) /* Attackable */
     , (1000202,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000202,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000202,   1, 'MysticPool') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000202,   1,   33558575) /* Setup */
     /* , (1000202,   2,  150995197) /* MotionTable */;
