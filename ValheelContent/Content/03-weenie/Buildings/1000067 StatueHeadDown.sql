DELETE FROM `weenie` WHERE `class_Id` = 1000067;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000067, 'StatueHeadDown', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000067,   1,        128) /* ItemType - Misc */
     , (1000067,   8,        500) /* Mass */
     , (1000067,  16,         32) /* ItemUseable - Remote */
     , (1000067,  19,          0) /* Value */
     , (1000067,  38,         50) /* ResistLockpick */
     , (1000067,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000067,   1, True ) /* Stuck */
     , (1000067,  11, True) /* IgnoreCollisions */
     , (1000067,  12, True ) /* ReportCollisions */
     , (1000067,  13, False) /* Ethereal */
     , (1000067,  14, False) /* GravityStatus */
     , (1000067,  19, True ) /* Attackable */
     , (1000067,  24, True ) /* UiHidden */
     , (1000067,  33, False) /* ResetMessagePending */
     , (1000067,  52, True ) /* AiImmobile */
     , (1000067,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000067	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000067,  11,     300) /* ResetInterval */
     , (1000067,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000067,   1, 'StatueHeadDown') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000067,   1,  33555378) /* Setup */
     , (1000067,   3,  536870932) /* SoundTable */
     , (1000067,   6,   67108990) /* PaletteBase */
     , (1000067,   7,  268436088) /* ClothingBase */
     , (1000067,   8,  100667349) /* Icon */
     , (1000067,  22,  872415275) /* PhysicsEffectTable */;
	 

