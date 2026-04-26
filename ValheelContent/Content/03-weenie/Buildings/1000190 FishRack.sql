DELETE FROM `weenie` WHERE `class_Id` = 1000190;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000190, 'FishRack', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000190,   1,        128) /* ItemType - Misc */
     , (1000190,   8,        500) /* Mass */
     , (1000190,  16,          0) /* ItemUseable - Remote */
     , (1000190,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000190,   1, True ) /* Stuck */
     , (1000190,  11, False) /* IgnoreCollisions */
     , (1000190,  12, True ) /* ReportCollisions */
     , (1000190,  13, False) /* Ethereal */
     , (1000190,  14, False) /* GravityStatus */
     , (1000190,  19, True ) /* Attackable */
     , (1000190,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000190,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000190,   1, 'FishRack') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000190,   1,   33557056) /* Setup */
     /* , (1000190,   2,  150994965) /* MotionTable */;
