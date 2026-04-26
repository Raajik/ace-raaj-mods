DELETE FROM `weenie` WHERE `class_Id` = 800006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800006, 'subwaydoor', 19, '2005-02-09 10:00:00') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800006,   1,        128) /* ItemType - Misc */
     , (800006,   8,        500) /* Mass */
     , (800006,  16,         32) /* ItemUseable - Remote */
     , (800006,  19,          0) /* Value */
     , (800006,  38,       9999) /* ResistLockpick */
     , (800006,  93,       1040) /* PhysicsState - ReportCollisions, IgnoreCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800006,   1, True ) /* Stuck */
     , (800006,   2, False) /* Open */
     , (800006,  12, True ) /* ReportCollisions */
     , (800006,  13, False) /* Ethereal */
     , (800006,  14, False) /* GravityStatus */
     , (800006,  33, False) /* ResetMessagePending */
     , (800006,  34, False) /* DefaultOpen */
	 , (800006,  35, True ) /* DefaultLocked */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800006,  11,     300) /* ResetInterval */
     , (800006,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800006,   1, 'Door') /* Name */
     , (800006,  12, 'prisonkey2') /* LockCode */
     , (800006,  14, 'Seems impossible to pick. Perhaps find another way.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800006,   1, 0x02000281) /* Setup */
     , (800006,   2, 0x09000016) /* MotionTable */
     , (800006,   3, 0x20000022) /* SoundTable */
     , (800006,   8, 0x06001412) /* Icon */
     , (800006,  22, 0x3400002B) /* PhysicsEffectTable */;
