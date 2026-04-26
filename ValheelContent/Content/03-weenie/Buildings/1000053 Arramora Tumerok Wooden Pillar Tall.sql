DELETE FROM `weenie` WHERE `class_Id` = 1000053;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000053, 'ArramoraTumerokWoodenPillarTall', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000053,   1,        128) /* ItemType - Misc */
     , (1000053,   8,        500) /* Mass */
     , (1000053,  16,         32) /* ItemUseable - Remote */
     , (1000053,  19,          0) /* Value */
     , (1000053,  38,         50) /* ResistLockpick */
     , (1000053,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000053,   1, True ) /* Stuck */
     , (1000053,  11, False) /* IgnoreCollisions */
     , (1000053,  12, True ) /* ReportCollisions */
     , (1000053,  13, False) /* Ethereal */
     , (1000053,  14, False) /* GravityStatus */
     , (1000053,  19, True ) /* Attackable */
     , (1000053,  24, True ) /* UiHidden */
     , (1000053,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000053,  11,     300) /* ResetInterval */
     , (1000053,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000053,   1, 'Tumerok Wooden Pillar Tall') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000053,   1,   33557835) /* Setup */
     , (1000053,   2,  150995418) /* MotionTable */
     , (1000053,   3,  536871119) /* SoundTable */
     , (1000053,   8,  100689885) /* Icon */
     , (1000053,  22,  872415325) /* PhysicsEffectTable */;
