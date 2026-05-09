DELETE FROM `weenie` WHERE `class_Id` = 800937;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800937, 'TPClosed', 19, '2005-02-09 10:00:00') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800937,   1,        128) /* ItemType - Misc */
     , (800937,   8,        500) /* Mass */
     , (800937,  16,         32) /* ItemUseable - Remote */
     , (800937,  19,          0) /* Value */
     , (800937,  38,       9999) /* ResistLockpick */
     , (800937,  93,       1040) /* PhysicsState - ReportCollisions, IgnoreCollisions */
     , (800937, 267,       3600) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800937,   1, True ) /* Stuck */
     , (800937,   2, False) /* Open */
     , (800937,  12, True ) /* ReportCollisions */
     , (800937,  13, False) /* Ethereal */
     , (800937,  14, False) /* GravityStatus */
     , (800937,  33, False) /* ResetMessagePending */
     , (800937,  34, False) /* DefaultOpen */
	 , (800937,  35, True ) /* DefaultLocked */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800937,  11,     300) /* ResetInterval */
     , (800937,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800937,   1, 'Tradewind''s Path Active') /* Name */
     , (800937,  12, 'cannotunlock') /* LockCode */
     , (800937,  14, 'Seems impossible to pick. Perhaps find another way.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800937,   1, 0x02000281) /* Setup */
     , (800937,   2, 0x09000016) /* MotionTable */
     , (800937,   3, 0x20000022) /* SoundTable */
     , (800937,   8, 0x06001412) /* Icon */
     , (800937,  22, 0x3400002B) /* PhysicsEffectTable */;
