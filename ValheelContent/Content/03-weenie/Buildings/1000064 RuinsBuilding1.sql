DELETE FROM `weenie` WHERE `class_Id` = 1000064;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000064, 'RuinsBuilding1', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000064,   1,        128) /* ItemType - Misc */
     , (1000064,   8,        500) /* Mass */
     , (1000064,  16,         32) /* ItemUseable - Remote */
     , (1000064,  19,          0) /* Value */
     , (1000064,  38,         50) /* ResistLockpick */
     , (1000064,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000064,   1, True ) /* Stuck */
     , (1000064,  11, True) /* IgnoreCollisions */
     , (1000064,  12, True ) /* ReportCollisions */
     , (1000064,  13, False) /* Ethereal */
     , (1000064,  14, False) /* GravityStatus */
     , (1000064,  19, True ) /* Attackable */
     , (1000064,  24, True ) /* UiHidden */
     , (1000064,  33, False) /* ResetMessagePending */
     , (1000064,  52, True ) /* AiImmobile */
     , (1000064,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000064	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000064,  11,     300) /* ResetInterval */
     , (1000064,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000064,   1, 'RuinsBuilding1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000064,   1,  33555016) /* Setup */
     , (1000064,   3,  536870932) /* SoundTable */
     , (1000064,   6,   67108990) /* PaletteBase */
     , (1000064,   7,  268436088) /* ClothingBase */
     , (1000064,   8,  100667349) /* Icon */
     , (1000064,  22,  872415275) /* PhysicsEffectTable */;
	 

