DELETE FROM `weenie` WHERE `class_Id` = 1000057;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000057, 'IceKingMonument', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000057,   1,        128) /* ItemType - Misc */
     , (1000057,   8,        500) /* Mass */
     , (1000057,  16,         32) /* ItemUseable - Remote */
     , (1000057,  19,          0) /* Value */
     , (1000057,  38,         50) /* ResistLockpick */
     , (1000057,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000057,   1, True ) /* Stuck */
     , (1000057,  11, False) /* IgnoreCollisions */
     , (1000057,  12, True ) /* ReportCollisions */
     , (1000057,  13, False) /* Ethereal */
     , (1000057,  14, False) /* GravityStatus */
     , (1000057,  19, True ) /* Attackable */
     , (1000057,  24, True ) /* UiHidden */
     , (1000057,  33, False) /* ResetMessagePending */
     , (1000057,  52, True ) /* AiImmobile */
     , (1000057,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000057	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000057,  11,     300) /* ResetInterval */
     , (1000057,  39,       5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000057,   1, 'IceKingMonument') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000057,   1,  33561513) /* Setup */
     , (1000057,   2,  150995174) /* MotionTable */
     , (1000057,   3,  536870913) /* SoundTable */
     , (1000057,   4,  805306368) /* CombatTable */
     , (1000057,   6,   67108990) /* PaletteBase */
     , (1000057,   8,  100667446) /* Icon */;
	 

