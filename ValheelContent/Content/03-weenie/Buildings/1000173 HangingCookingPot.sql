DELETE FROM `weenie` WHERE `class_Id` = 1000173;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000173, 'HangingCookingPot', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000173,   1,        128) /* ItemType - Misc */
     , (1000173,   8,        500) /* Mass */
     , (1000173,  16,          0) /* ItemUseable - Remote */
     , (1000173,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000173,   1, True ) /* Stuck */
     , (1000173,  11, False) /* IgnoreCollisions */
     , (1000173,  12, True ) /* ReportCollisions */
     , (1000173,  13, False) /* Ethereal */
     , (1000173,  14, False) /* GravityStatus */
     , (1000173,  19, True ) /* Attackable */
     , (1000173,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000173,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000173,   1, 'HangingCookingPot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000173,   1,   33555269) /* Setup */
     /* , (1000173,   2,  150994965) /* MotionTable */;
