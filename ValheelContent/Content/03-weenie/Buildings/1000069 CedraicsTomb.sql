DELETE FROM `weenie` WHERE `class_Id` = 1000069;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000069, 'Tomb', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000069,   1,        128) /* ItemType - Misc */
     , (1000069,   8,        500) /* Mass */
     , (1000069,  16,         32) /* ItemUseable - Remote */
     , (1000069,  19,          0) /* Value */
     , (1000069,  38,         50) /* ResistLockpick */
     , (1000069,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000069,   1, True ) /* Stuck */
     , (1000069,  11, True) /* IgnoreCollisions */
     , (1000069,  12, True ) /* ReportCollisions */
     , (1000069,  13, False) /* Ethereal */
     , (1000069,  14, False) /* GravityStatus */
     , (1000069,  19, True ) /* Attackable */
     , (1000069,  24, True ) /* UiHidden */
     , (1000069,  33, False) /* ResetMessagePending */
     , (1000069,  52, True ) /* AiImmobile */
     , (1000069,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000069	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000069,  11,     300) /* ResetInterval */
     , (1000069,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000069,   1, 'Tomb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000069,   1,  33561233) /* Setup */
     , (1000069,   3,  536870932) /* SoundTable */
     , (1000069,   6,   67108990) /* PaletteBase */
     , (1000069,   7,  268436088) /* ClothingBase */
     , (1000069,   8,  100667349) /* Icon */
     , (1000069,  22,  872415275) /* PhysicsEffectTable */;
	 

