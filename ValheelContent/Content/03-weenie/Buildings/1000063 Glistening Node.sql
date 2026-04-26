DELETE FROM `weenie` WHERE `class_Id` = 1000063;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000063, 'GlisteningNode', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000063,   1,        128) /* ItemType - Misc */
     , (1000063,   8,        500) /* Mass */
     , (1000063,  16,         32) /* ItemUseable - Remote */
     , (1000063,  19,          0) /* Value */
     , (1000063,  38,         50) /* ResistLockpick */
     , (1000063,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000063,   1, True ) /* Stuck */
     , (1000063,  11, True) /* IgnoreCollisions */
     , (1000063,  12, True ) /* ReportCollisions */
     , (1000063,  13, False) /* Ethereal */
     , (1000063,  14, False) /* GravityStatus */
     , (1000063,  19, True ) /* Attackable */
     , (1000063,  24, True ) /* UiHidden */
     , (1000063,  33, False) /* ResetMessagePending */
     , (1000063,  52, True ) /* AiImmobile */
     , (1000063,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000063	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000063,  11,     300) /* ResetInterval */
     , (1000063,  39,     1.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000063,   1, 'Glistening Node') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000063,   1,  33555403) /* Setup */
     , (1000063,   3,  536870932) /* SoundTable */
     , (1000063,   6,   67108990) /* PaletteBase */
     , (1000063,   7,  268436088) /* ClothingBase */
     , (1000063,   8,  100667349) /* Icon */
     , (1000063,  22,  872415275) /* PhysicsEffectTable */;
	 

