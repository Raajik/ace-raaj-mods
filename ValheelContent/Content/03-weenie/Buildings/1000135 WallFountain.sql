DELETE FROM `weenie` WHERE `class_Id` = 1000135;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000135, 'WallFountain', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000135,   1,        128) /* ItemType - Misc */
     , (1000135,   8,        500) /* Mass */
     , (1000135,  16,          0) /* ItemUseable - Remote */
     , (1000135,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000135,   1, True ) /* Stuck */
     , (1000135,  11, False) /* IgnoreCollisions */
     , (1000135,  12, True ) /* ReportCollisions */
     , (1000135,  13, False) /* Ethereal */
     , (1000135,  14, False) /* GravityStatus */
     , (1000135,  19, True ) /* Attackable */
     , (1000135,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000135,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000135,   1, 'WallFountain') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000135,   1,   33554709) /* Setup */
     /* , (1000135,   2,  150994965) /* MotionTable */;
