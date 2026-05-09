DELETE FROM `weenie` WHERE `class_Id` = 1000021;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000021, 'Wall3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000021,   1,        128) /* ItemType - Misc */
     , (1000021,   8,        500) /* Mass */
     , (1000021,  16,         32) /* ItemUseable - Remote */
     , (1000021,  19,          0) /* Value */
     , (1000021,  38,         50) /* ResistLockpick */
     , (1000021,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000021,   1, True ) /* Stuck */
     , (1000021,  11, False) /* IgnoreCollisions */
     , (1000021,  12, True ) /* ReportCollisions */
     , (1000021,  13, False) /* Ethereal */
     , (1000021,  14, False) /* GravityStatus */
     , (1000021,  19, True ) /* Attackable */
     , (1000021,  24, True ) /* UiHidden */
     , (1000021,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000021,  11,     300) /* ResetInterval */
     , (1000021,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000021,   1, 'Wall3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000021,   1,   33561466) /* Setup */
     , (1000021,   2,  150995355) /* MotionTable */
     , (1000021,   3,  536871001) /* SoundTable */
     , (1000021,   8,  100676956) /* Icon */
     , (1000021,  22,  872415328) /* PhysicsEffectTable */;
