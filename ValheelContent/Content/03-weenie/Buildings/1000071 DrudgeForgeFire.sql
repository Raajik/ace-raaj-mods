DELETE FROM `weenie` WHERE `class_Id` = 1000071;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000071, 'DrudgeForgeFire', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000071,   1,        128) /* ItemType - Misc */
     , (1000071,   8,        500) /* Mass */
     , (1000071,  16,         32) /* ItemUseable - Remote */
     , (1000071,  19,          0) /* Value */
     , (1000071,  38,         50) /* ResistLockpick */
     , (1000071,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000071,   1, True ) /* Stuck */
     , (1000071,  11, True) /* IgnoreCollisions */
     , (1000071,  12, True ) /* ReportCollisions */
     , (1000071,  13, False) /* Ethereal */
     , (1000071,  14, False) /* GravityStatus */
     , (1000071,  19, True ) /* Attackable */
     , (1000071,  24, True ) /* UiHidden */
     , (1000071,  33, False) /* ResetMessagePending */
     , (1000071,  52, True ) /* AiImmobile */
     , (1000071,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000071	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000071,  11,     300) /* ResetInterval */
     , (1000071,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000071,   1, 'DrudgeForgeFire') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000071,   1,   33560033) /* Setup */
     , (1000071,   2,  150995290) /* MotionTable */
     , (1000071,   8,  100670274) /* Icon */
     , (1000071,  22,  872415389) /* PhysicsEffectTable */;
	 

