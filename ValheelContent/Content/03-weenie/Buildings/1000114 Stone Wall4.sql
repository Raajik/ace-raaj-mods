DELETE FROM `weenie` WHERE `class_Id` = 1000114;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000114, 'Stone Wall4', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000114,   1,        128) /* ItemType - Misc */
     , (1000114,   8,        500) /* Mass */
     , (1000114,  16,         32) /* ItemUseable - Remote */
     , (1000114,  19,          0) /* Value */
     , (1000114,  38,         50) /* ResistLockpick */
     , (1000114,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000114,   1, True ) /* Stuck */
     , (1000114,  11, False) /* IgnoreCollisions */
     , (1000114,  12, True ) /* ReportCollisions */
     , (1000114,  13, False) /* Ethereal */
     , (1000114,  14, False) /* GravityStatus */
     , (1000114,  19, True ) /* Attackable */
     , (1000114,  24, True ) /* UiHidden */
     , (1000114,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000114,  11,     300) /* ResetInterval */
     , (1000114,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000114,   1, 'Stone Wall4') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000114,   1,   33560780) /* Setup */
     , (1000114,   2,  150995355) /* MotionTable */
     , (1000114,   3,  536871001) /* SoundTable */
     , (1000114,   8,  100676956) /* Icon */
     , (1000114,  22,  872415328) /* PhysicsEffectTable */;
