DELETE FROM `weenie` WHERE `class_Id` = 1000058;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000058, 'EntryArchway', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000058,   1,        128) /* ItemType - Misc */
     , (1000058,   8,        500) /* Mass */
     , (1000058,  16,         32) /* ItemUseable - Remote */
     , (1000058,  19,          0) /* Value */
     , (1000058,  38,         50) /* ResistLockpick */
     , (1000058,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000058,   1, True ) /* Stuck */
     , (1000058,  11, True) /* IgnoreCollisions */
     , (1000058,  12, True ) /* ReportCollisions */
     , (1000058,  13, False) /* Ethereal */
     , (1000058,  14, False) /* GravityStatus */
     , (1000058,  19, True ) /* Attackable */
     , (1000058,  24, True ) /* UiHidden */
     , (1000058,  33, False) /* ResetMessagePending */
     , (1000058,  52, True ) /* AiImmobile */
     , (1000058,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000058	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000058,  11,     300) /* ResetInterval */
     , (1000058,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000058,   1, 'EntryArchway') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000058,   1,  33561464) /* Setup */
     , (1000058,   3,  536870932) /* SoundTable */
     , (1000058,   6,   67108990) /* PaletteBase */
     , (1000058,   7,  268436088) /* ClothingBase */
     , (1000058,   8,  100667349) /* Icon */
     , (1000058,  22,  872415275) /* PhysicsEffectTable */;
	 

