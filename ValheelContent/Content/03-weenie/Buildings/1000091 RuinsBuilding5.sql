DELETE FROM `weenie` WHERE `class_Id` = 1000091;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000091, 'RuinsBuilding5', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000091,   1,        128) /* ItemType - Misc */
     , (1000091,   8,        500) /* Mass */
     , (1000091,  16,         32) /* ItemUseable - Remote */
     , (1000091,  19,          0) /* Value */
     , (1000091,  38,         50) /* ResistLockpick */
     , (1000091,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000091,   1, True ) /* Stuck */
     , (1000091,  11, True) /* IgnoreCollisions */
     , (1000091,  12, True ) /* ReportCollisions */
     , (1000091,  13, False) /* Ethereal */
     , (1000091,  14, False) /* GravityStatus */
     , (1000091,  19, True ) /* Attackable */
     , (1000091,  24, True ) /* UiHidden */
     , (1000091,  33, False) /* ResetMessagePending */
     , (1000091,  52, True ) /* AiImmobile */
     , (1000091,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000091	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000091,  11,     300) /* ResetInterval */
     , (1000091,  39,     1.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000091,   1, 'RuinsBuilding5') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000091,   1,  33555016) /* Setup */
     , (1000091,   3,  536870932) /* SoundTable */
     , (1000091,   6,   67108990) /* PaletteBase */
     , (1000091,   7,  268436088) /* ClothingBase */
     , (1000091,   8,  100667349) /* Icon */
     , (1000091,  22,  872415275) /* PhysicsEffectTable */;
	 

