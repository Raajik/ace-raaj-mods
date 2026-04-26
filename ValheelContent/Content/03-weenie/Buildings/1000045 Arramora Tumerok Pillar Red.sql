DELETE FROM `weenie` WHERE `class_Id` = 1000045;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000045, 'ArramoraTumerokPillarRed', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000045,   1,        128) /* ItemType - Misc */
     , (1000045,   8,        500) /* Mass */
     , (1000045,  16,         32) /* ItemUseable - Remote */
     , (1000045,  19,          0) /* Value */
     , (1000045,  38,         50) /* ResistLockpick */
     , (1000045,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000045,   1, True ) /* Stuck */
     , (1000045,  11, False) /* IgnoreCollisions */
     , (1000045,  12, True ) /* ReportCollisions */
     , (1000045,  13, False) /* Ethereal */
     , (1000045,  14, False) /* GravityStatus */
     , (1000045,  19, True ) /* Attackable */
     , (1000045,  24, True ) /* UiHidden */
     , (1000045,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000045,  11,     300) /* ResetInterval */
     , (1000045,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000045,   1, 'Tumerok Pillar Red') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000045,   1,   33557182) /* Setup */
     , (1000045,   2,  150995418) /* MotionTable */
     , (1000045,   3,  536871119) /* SoundTable */
     , (1000045,   8,  100689885) /* Icon */
     , (1000045,  22,  872415325) /* PhysicsEffectTable */;
