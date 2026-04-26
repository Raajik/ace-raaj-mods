DELETE FROM `weenie` WHERE `class_Id` = 1000093;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000093, 'StatueHeadDown2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000093,   1,        128) /* ItemType - Misc */
     , (1000093,   8,        500) /* Mass */
     , (1000093,  16,         32) /* ItemUseable - Remote */
     , (1000093,  19,          0) /* Value */
     , (1000093,  38,         50) /* ResistLockpick */
     , (1000093,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000093,   1, True ) /* Stuck */
     , (1000093,  11, True) /* IgnoreCollisions */
     , (1000093,  12, True ) /* ReportCollisions */
     , (1000093,  13, False) /* Ethereal */
     , (1000093,  14, False) /* GravityStatus */
     , (1000093,  19, True ) /* Attackable */
     , (1000093,  24, True ) /* UiHidden */
     , (1000093,  33, False) /* ResetMessagePending */
     , (1000093,  52, True ) /* AiImmobile */
     , (1000093,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000093	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000093,  11,     300) /* ResetInterval */
     , (1000093,  39,     0.4) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000093,   1, 'StatueHeadDown2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000093,   1,  33555378) /* Setup */
     , (1000093,   3,  536870932) /* SoundTable */
     , (1000093,   6,   67108990) /* PaletteBase */
     , (1000093,   7,  268436088) /* ClothingBase */
     , (1000093,   8,  100667349) /* Icon */
     , (1000093,  22,  872415275) /* PhysicsEffectTable */;
	 

