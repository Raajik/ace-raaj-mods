DELETE FROM `weenie` WHERE `class_Id` = 1000215;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000215, 'PierPortion3', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000215,   1,        128) /* ItemType - Misc */
     , (1000215,   8,        500) /* Mass */
     , (1000215,  16,          0) /* ItemUseable - Remote */
     , (1000215,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000215,   1, True ) /* Stuck */
     , (1000215,  11, False) /* IgnoreCollisions */
     , (1000215,  12, True ) /* ReportCollisions */
     , (1000215,  13, False) /* Ethereal */
     , (1000215,  14, False) /* GravityStatus */
     , (1000215,  19, True ) /* Attackable */
     , (1000215,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000215,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000215,   1, 'PierPortion3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000215,   1,   33558306) /* Setup */
     /* , (1000215,   2,  150995197) /* MotionTable */;
