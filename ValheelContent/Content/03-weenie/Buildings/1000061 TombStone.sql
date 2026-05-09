DELETE FROM `weenie` WHERE `class_Id` = 1000061;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000061, 'TombStone', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000061,   1,        128) /* ItemType - Misc */
     , (1000061,   8,        500) /* Mass */
     , (1000061,  16,         32) /* ItemUseable - Remote */
     , (1000061,  19,          0) /* Value */
     , (1000061,  38,         50) /* ResistLockpick */
     , (1000061,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000061,   1, True ) /* Stuck */
     , (1000061,  11, True) /* IgnoreCollisions */
     , (1000061,  12, True ) /* ReportCollisions */
     , (1000061,  13, False) /* Ethereal */
     , (1000061,  14, False) /* GravityStatus */
     , (1000061,  19, True ) /* Attackable */
     , (1000061,  24, True ) /* UiHidden */
     , (1000061,  33, False) /* ResetMessagePending */
     , (1000061,  52, True ) /* AiImmobile */
     , (1000061,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000061	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000061,  11,     300) /* ResetInterval */
     , (1000061,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000061,   1, 'TombStone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000061,   1,  33555352) /* Setup */
     , (1000061,   3,  536870932) /* SoundTable */
     , (1000061,   6,   67108990) /* PaletteBase */
     , (1000061,   7,  268436088) /* ClothingBase */
     , (1000061,   8,  100667349) /* Icon */
     , (1000061,  22,  872415275) /* PhysicsEffectTable */;
	 

