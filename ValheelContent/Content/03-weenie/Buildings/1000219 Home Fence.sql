DELETE FROM `weenie` WHERE `class_Id` = 1000219;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000219, 'HomeFence', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000219,   1,        128) /* ItemType - Misc */
     , (1000219,   8,        500) /* Mass */
     , (1000219,  16,          0) /* ItemUseable - Remote */
     , (1000219,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000219,   1, True ) /* Stuck */
     , (1000219,  11, False) /* IgnoreCollisions */
     , (1000219,  12, True ) /* ReportCollisions */
     , (1000219,  13, False) /* Ethereal */
     , (1000219,  14, False) /* GravityStatus */
     , (1000219,  19, True ) /* Attackable */
     , (1000219,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000219,  39,       0.15) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000219,   1, 'HomeFence') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000219,   1,   33557118) /* Setup */
     , (1000219,   2,  150995139) /* MotionTable */
     , (1000219,   3,  536870947) /* SoundTable */
     , (1000219,   8,  100668183) /* Icon */
     , (1000219,  22,  872415275) /* PhysicsEffectTable */;
