DELETE FROM `weenie` WHERE `class_Id` = 1000054;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000054, 'ArramoraTumerokWoodenPillarTall2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000054,   1,        128) /* ItemType - Misc */
     , (1000054,   8,        500) /* Mass */
     , (1000054,  16,         32) /* ItemUseable - Remote */
     , (1000054,  19,          0) /* Value */
     , (1000054,  38,         50) /* ResistLockpick */
     , (1000054,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000054,   1, True ) /* Stuck */
     , (1000054,  11, False) /* IgnoreCollisions */
     , (1000054,  12, True ) /* ReportCollisions */
     , (1000054,  13, False) /* Ethereal */
     , (1000054,  14, False) /* GravityStatus */
     , (1000054,  19, True ) /* Attackable */
     , (1000054,  24, True ) /* UiHidden */
     , (1000054,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000054,  11,     300) /* ResetInterval */
     , (1000054,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000054,   1, 'Tumerok Wooden Pillar Tall2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000054,   1,   33557836) /* Setup */
     , (1000054,   2,  150995418) /* MotionTable */
     , (1000054,   3,  536871119) /* SoundTable */
     , (1000054,   8,  100689885) /* Icon */
     , (1000054,  22,  872415325) /* PhysicsEffectTable */;
