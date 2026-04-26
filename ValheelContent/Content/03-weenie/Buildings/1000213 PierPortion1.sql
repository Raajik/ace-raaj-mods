DELETE FROM `weenie` WHERE `class_Id` = 1000213;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000213, 'PierPortion1', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000213,   1,        128) /* ItemType - Misc */
     , (1000213,   8,        500) /* Mass */
     , (1000213,  16,          0) /* ItemUseable - Remote */
     , (1000213,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000213,   1, True ) /* Stuck */
     , (1000213,  11, False) /* IgnoreCollisions */
     , (1000213,  12, True ) /* ReportCollisions */
     , (1000213,  13, False) /* Ethereal */
     , (1000213,  14, False) /* GravityStatus */
     , (1000213,  19, True ) /* Attackable */
     , (1000213,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000213,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000213,   1, 'PierPortion1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000213,   1,   33558273) /* Setup */
     /* , (1000213,   2,  150995197) /* MotionTable */;
