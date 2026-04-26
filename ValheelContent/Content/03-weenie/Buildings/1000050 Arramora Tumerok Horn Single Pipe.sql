DELETE FROM `weenie` WHERE `class_Id` = 1000050;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000050, 'ArramoraTumerokHornSinglePipe', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000050,   1,        128) /* ItemType - Misc */
     , (1000050,   8,        500) /* Mass */
     , (1000050,  16,         32) /* ItemUseable - Remote */
     , (1000050,  19,          0) /* Value */
     , (1000050,  38,         50) /* ResistLockpick */
     , (1000050,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000050,   1, True ) /* Stuck */
     , (1000050,  11, False) /* IgnoreCollisions */
     , (1000050,  12, True ) /* ReportCollisions */
     , (1000050,  13, False) /* Ethereal */
     , (1000050,  14, False) /* GravityStatus */
     , (1000050,  19, True ) /* Attackable */
     , (1000050,  24, True ) /* UiHidden */
     , (1000050,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000050,  11,     300) /* ResetInterval */
     , (1000050,  39,       1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000050,   1, 'Tumerok Horn Single Pipe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000050,   1,   33557828) /* Setup */
     , (1000050,   2,  150995418) /* MotionTable */
     , (1000050,   3,  536871119) /* SoundTable */
     , (1000050,   8,  100689885) /* Icon */
     , (1000050,  22,  872415325) /* PhysicsEffectTable */;
