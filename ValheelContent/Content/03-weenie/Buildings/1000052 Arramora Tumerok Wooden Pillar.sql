DELETE FROM `weenie` WHERE `class_Id` = 1000052;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000052, 'ArramoraTumerokWoodenPillar', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000052,   1,        128) /* ItemType - Misc */
     , (1000052,   8,        500) /* Mass */
     , (1000052,  16,         32) /* ItemUseable - Remote */
     , (1000052,  19,          0) /* Value */
     , (1000052,  38,         50) /* ResistLockpick */
     , (1000052,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000052,   1, True ) /* Stuck */
     , (1000052,  11, False) /* IgnoreCollisions */
     , (1000052,  12, True ) /* ReportCollisions */
     , (1000052,  13, False) /* Ethereal */
     , (1000052,  14, False) /* GravityStatus */
     , (1000052,  19, True ) /* Attackable */
     , (1000052,  24, True ) /* UiHidden */
     , (1000052,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000052,  11,     300) /* ResetInterval */
     , (1000052,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000052,   1, 'Tumerok Wooden Pillar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000052,   1,   33557834) /* Setup */
     , (1000052,   2,  150995418) /* MotionTable */
     , (1000052,   3,  536871119) /* SoundTable */
     , (1000052,   8,  100689885) /* Icon */
     , (1000052,  22,  872415325) /* PhysicsEffectTable */;
