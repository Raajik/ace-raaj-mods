DELETE FROM `weenie` WHERE `class_Id` = 1000212;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000212, 'Beacon3', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000212,   1,        128) /* ItemType - Misc */
     , (1000212,   8,        500) /* Mass */
     , (1000212,  16,          0) /* ItemUseable - Remote */
     , (1000212,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000212,   1, True ) /* Stuck */
     , (1000212,  11, False) /* IgnoreCollisions */
     , (1000212,  12, True ) /* ReportCollisions */
     , (1000212,  13, False) /* Ethereal */
     , (1000212,  14, False) /* GravityStatus */
     , (1000212,  19, True ) /* Attackable */
     , (1000212,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000212,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000212,   1, 'Beacon3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000212,   1,   33559221) /* Setup */
     /* , (1000212,   2,  150995197) /* MotionTable */;
