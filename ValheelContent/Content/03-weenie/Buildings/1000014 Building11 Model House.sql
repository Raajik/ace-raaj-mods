DELETE FROM `weenie` WHERE `class_Id` = 1000014;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000014, 'Building11', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000014,   1,        128) /* ItemType - Misc */
     , (1000014,   8,        500) /* Mass */
     , (1000014,  16,         32) /* ItemUseable - Remote */
     , (1000014,  19,          0) /* Value */
     , (1000014,  38,         50) /* ResistLockpick */
     , (1000014,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000014,   1, True ) /* Stuck */
     , (1000014,   2, False) /* Open */
     , (1000014,   3, True ) /* Locked */
     , (1000014,  11, False) /* IgnoreCollisions */
     , (1000014,  12, True ) /* ReportCollisions */
     , (1000014,  13, False) /* Ethereal */
     , (1000014,  14, False) /* GravityStatus */
     , (1000014,  19, True ) /* Attackable */
     , (1000014,  24, True ) /* UiHidden */
     , (1000014,  33, False) /* ResetMessagePending */
     , (1000014,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000014,  11,     300) /* ResetInterval */
     , (1000014,  39,       5) /* DefaultScale */
     , (1000014,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000014,   1, 'Building11') /* Name */
     , (1000014,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000014,   1,   33560158) /* Setup */
     , (1000014,   2,  150995355) /* MotionTable */
     , (1000014,   3,  536871001) /* SoundTable */
     , (1000014,   8,  100676956) /* Icon */
     , (1000014,  22,  872415328) /* PhysicsEffectTable */;
