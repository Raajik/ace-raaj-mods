DELETE FROM `weenie` WHERE `class_Id` = 1000193;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000193, 'LargeFountain', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000193,   1,        128) /* ItemType - Misc */
     , (1000193,   8,        500) /* Mass */
     , (1000193,  16,          0) /* ItemUseable - Remote */
     , (1000193,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000193,   1, True ) /* Stuck */
     , (1000193,  11, False) /* IgnoreCollisions */
     , (1000193,  12, True ) /* ReportCollisions */
     , (1000193,  13, False) /* Ethereal */
     , (1000193,  14, False) /* GravityStatus */
     , (1000193,  19, True ) /* Attackable */
     , (1000193,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000193,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000193,   1, 'LargeFountain') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000193,   1,   33557155) /* Setup */
     /* , (1000193,   2,  150994965) /* MotionTable */;
