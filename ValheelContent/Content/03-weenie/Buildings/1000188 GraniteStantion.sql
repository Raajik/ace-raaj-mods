DELETE FROM `weenie` WHERE `class_Id` = 1000188;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000188, 'GraniteStantion', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000188,   1,        128) /* ItemType - Misc */
     , (1000188,   8,        500) /* Mass */
     , (1000188,  16,          0) /* ItemUseable - Remote */
     , (1000188,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000188,   1, True ) /* Stuck */
     , (1000188,  11, False) /* IgnoreCollisions */
     , (1000188,  12, True ) /* ReportCollisions */
     , (1000188,  13, False) /* Ethereal */
     , (1000188,  14, False) /* GravityStatus */
     , (1000188,  19, True ) /* Attackable */
     , (1000188,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000188,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000188,   1, 'GraniteStantion') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000188,   1,   33556577) /* Setup */
     /* , (1000188,   2,  150994965) /* MotionTable */;
