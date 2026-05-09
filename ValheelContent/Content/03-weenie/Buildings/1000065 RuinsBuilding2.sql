DELETE FROM `weenie` WHERE `class_Id` = 1000065;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000065, 'RuinsBuilding2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000065,   1,        128) /* ItemType - Misc */
     , (1000065,   8,        500) /* Mass */
     , (1000065,  16,         32) /* ItemUseable - Remote */
     , (1000065,  19,          0) /* Value */
     , (1000065,  38,         50) /* ResistLockpick */
     , (1000065,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000065,   1, True ) /* Stuck */
     , (1000065,  11, True) /* IgnoreCollisions */
     , (1000065,  12, True ) /* ReportCollisions */
     , (1000065,  13, False) /* Ethereal */
     , (1000065,  14, False) /* GravityStatus */
     , (1000065,  19, True ) /* Attackable */
     , (1000065,  24, True ) /* UiHidden */
     , (1000065,  33, False) /* ResetMessagePending */
     , (1000065,  52, True ) /* AiImmobile */
     , (1000065,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000065	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000065,  11,     300) /* ResetInterval */
     , (1000065,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000065,   1, 'RuinsBuilding2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000065,   1,  33555019) /* Setup */
     , (1000065,   3,  536870932) /* SoundTable */
     , (1000065,   6,   67108990) /* PaletteBase */
     , (1000065,   7,  268436088) /* ClothingBase */
     , (1000065,   8,  100667349) /* Icon */
     , (1000065,  22,  872415275) /* PhysicsEffectTable */;
	 

