DELETE FROM `weenie` WHERE `class_Id` = 1000051;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000051, 'ArramoraTumerokHorn', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000051,   1,        128) /* ItemType - Misc */
     , (1000051,   8,        500) /* Mass */
     , (1000051,  16,         32) /* ItemUseable - Remote */
     , (1000051,  19,          0) /* Value */
     , (1000051,  38,         50) /* ResistLockpick */
     , (1000051,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000051,   1, True ) /* Stuck */
     , (1000051,  11, False) /* IgnoreCollisions */
     , (1000051,  12, True ) /* ReportCollisions */
     , (1000051,  13, False) /* Ethereal */
     , (1000051,  14, False) /* GravityStatus */
     , (1000051,  19, True ) /* Attackable */
     , (1000051,  24, True ) /* UiHidden */
     , (1000051,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000051,  11,     300) /* ResetInterval */
     , (1000051,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000051,   1, 'Tumerok Horn') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000051,   1,   33557833) /* Setup */
     , (1000051,   2,  150995418) /* MotionTable */
     , (1000051,   3,  536871119) /* SoundTable */
     , (1000051,   8,  100689885) /* Icon */
     , (1000051,  22,  872415325) /* PhysicsEffectTable */;
