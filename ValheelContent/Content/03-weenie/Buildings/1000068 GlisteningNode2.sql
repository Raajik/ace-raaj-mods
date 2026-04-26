DELETE FROM `weenie` WHERE `class_Id` = 1000068;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000068, 'GlisteningNode2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000068,   1,        128) /* ItemType - Misc */
     , (1000068,   8,        500) /* Mass */
     , (1000068,  16,         32) /* ItemUseable - Remote */
     , (1000068,  19,          0) /* Value */
     , (1000068,  38,         50) /* ResistLockpick */
     , (1000068,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000068,   1, True ) /* Stuck */
     , (1000068,  11, True) /* IgnoreCollisions */
     , (1000068,  12, True ) /* ReportCollisions */
     , (1000068,  13, False) /* Ethereal */
     , (1000068,  14, False) /* GravityStatus */
     , (1000068,  19, True ) /* Attackable */
     , (1000068,  24, True ) /* UiHidden */
     , (1000068,  33, False) /* ResetMessagePending */
     , (1000068,  52, True ) /* AiImmobile */
     , (1000068,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (1000068	,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000068,  11,     300) /* ResetInterval */
     , (1000068,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000068,   1, 'GlisteningNode2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000068,   1,  33560025) /* Setup */
     , (1000068,   3,  536870932) /* SoundTable */
     , (1000068,   6,   67108990) /* PaletteBase */
     , (1000068,   7,  268436088) /* ClothingBase */
     , (1000068,   8,  100667349) /* Icon */
     , (1000068,  22,  872415275) /* PhysicsEffectTable */;
	 

