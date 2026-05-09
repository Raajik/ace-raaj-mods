DELETE FROM `weenie` WHERE `class_Id` = 1000160;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000160, 'RegularBrazier', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000160,   1,        128) /* ItemType - Misc */
     , (1000160,   8,        500) /* Mass */
     , (1000160,  16,          0) /* ItemUseable - Remote */
     , (1000160,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000160,   1, True ) /* Stuck */
     , (1000160,  11, False) /* IgnoreCollisions */
     , (1000160,  12, True ) /* ReportCollisions */
     , (1000160,  13, False) /* Ethereal */
     , (1000160,  14, False) /* GravityStatus */
     , (1000160,  19, True ) /* Attackable */
     , (1000160,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000160,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000160,   1, 'RegularBrazier') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000160,   1,   33555077) /* Setup */
     /* , (1000160,   2,  150994965) /* MotionTable */;
