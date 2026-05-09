DELETE FROM `weenie` WHERE `class_Id` = 1000060;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000060, 'Statue1', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000060,   1,        128) /* ItemType - Misc */
     , (1000060,   8,        500) /* Mass */
     , (1000060,  16,         32) /* ItemUseable - Remote */
     , (1000060,  19,          0) /* Value */
     , (1000060,  38,         50) /* ResistLockpick */
     , (1000060,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000060,   1, True ) /* Stuck */
     , (1000060,  11, True) /* IgnoreCollisions */
     , (1000060,  12, True ) /* ReportCollisions */
     , (1000060,  13, False) /* Ethereal */
     , (1000060,  14, False) /* GravityStatus */
     , (1000060,  19, True ) /* Attackable */
     , (1000060,  24, True ) /* UiHidden */
     , (1000060,  33, False) /* ResetMessagePending */
     , (1000060,  52, True ) /* AiImmobile */
     , (1000060,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000060	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000060,  11,     300) /* ResetInterval */
     , (1000060,  39,     1.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000060,   1, 'Statue1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000060,   1,  33560835) /* Setup */
     , (1000060,   3,  536870932) /* SoundTable */
     , (1000060,   6,   67108990) /* PaletteBase */
     , (1000060,   7,  268436088) /* ClothingBase */
     , (1000060,   8,  100667349) /* Icon */
     , (1000060,  22,  872415275) /* PhysicsEffectTable */;
	 

