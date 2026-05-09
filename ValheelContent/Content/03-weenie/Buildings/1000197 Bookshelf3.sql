DELETE FROM `weenie` WHERE `class_Id` = 1000197;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000197, 'Bookshelf3', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000197,   1,        128) /* ItemType - Misc */
     , (1000197,   8,        500) /* Mass */
     , (1000197,  16,          0) /* ItemUseable - Remote */
     , (1000197,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000197,   1, True ) /* Stuck */
     , (1000197,  11, False) /* IgnoreCollisions */
     , (1000197,  12, True ) /* ReportCollisions */
     , (1000197,  13, False) /* Ethereal */
     , (1000197,  14, False) /* GravityStatus */
     , (1000197,  19, True ) /* Attackable */
     , (1000197,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000197,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000197,   1, 'Bookshelf3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000197,   1,   33557591) /* Setup */
     /* , (1000197,   2,  150994965) /* MotionTable */;
