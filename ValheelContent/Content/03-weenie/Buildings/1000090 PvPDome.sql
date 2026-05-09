DELETE FROM `weenie` WHERE `class_Id` = 1000090;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000090, 'PvPDome2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000090,   1,        128) /* ItemType - Misc */
     , (1000090,   8,        500) /* Mass */
     , (1000090,  16,         32) /* ItemUseable - Remote */
     , (1000090,  19,          0) /* Value */
     , (1000090,  38,         50) /* ResistLockpick */
     , (1000090,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000090,   1, True ) /* Stuck */
     , (1000090,  11, True) /* IgnoreCollisions */
     , (1000090,  12, True ) /* ReportCollisions */
     , (1000090,  13, False) /* Ethereal */
     , (1000090,  14, False) /* GravityStatus */
     , (1000090,  19, True ) /* Attackable */
     , (1000090,  24, True ) /* UiHidden */
     , (1000090,  33, False) /* ResetMessagePending */
     , (1000090,  52, True ) /* AiImmobile */
     , (1000090,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000090	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000090,  11,     300) /* ResetInterval */
     , (1000090,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000090,   1, 'PvPDome') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000090,   1,  33560700) /* Setup */
     , (1000090,   3,  536870932) /* SoundTable */
     , (1000090,   6,   67108990) /* PaletteBase */
     , (1000090,   7,  268436088) /* ClothingBase */
     , (1000090,   8,  100667349) /* Icon */
     , (1000090,  22,  872415275) /* PhysicsEffectTable */;
	 

