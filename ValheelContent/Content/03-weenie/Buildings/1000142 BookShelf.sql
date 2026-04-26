DELETE FROM `weenie` WHERE `class_Id` = 1000142;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000142, 'BookShelf1', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000142,   1,        128) /* ItemType - Misc */
     , (1000142,   8,        500) /* Mass */
     , (1000142,  16,          0) /* ItemUseable - Remote */
     , (1000142,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000142,   1, True ) /* Stuck */
     , (1000142,  11, False) /* IgnoreCollisions */
     , (1000142,  12, True ) /* ReportCollisions */
     , (1000142,  13, False) /* Ethereal */
     , (1000142,  14, False) /* GravityStatus */
     , (1000142,  19, True ) /* Attackable */
     , (1000142,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000142,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000142,   1, 'BookShelf1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000142,   1,   33554819) /* Setup */
     /* , (1000142,   2,  150994965) /* MotionTable */;
