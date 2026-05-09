DELETE FROM `weenie` WHERE `class_Id` = 1000094;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000094, 'WhiteSmoke', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000094,   1,        128) /* ItemType - Misc */
     , (1000094,   8,        500) /* Mass */
     , (1000094,  16,         32) /* ItemUseable - Remote */
     , (1000094,  19,          0) /* Value */
     , (1000094,  38,         50) /* ResistLockpick */
     , (1000094,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000094,   1, True ) /* Stuck */
     , (1000094,  11, False) /* IgnoreCollisions */
     , (1000094,  12, True ) /* ReportCollisions */
     , (1000094,  13, False) /* Ethereal */
     , (1000094,  14, False) /* GravityStatus */
     , (1000094,  19, True ) /* Attackable */
     , (1000094,  24, True ) /* UiHidden */
     , (1000094,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000094,  11,     300) /* ResetInterval */
     , (1000094,  39,       5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000094,   1, 'WhiteSmoke') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000094,   1,   33556114) /* Setup */
     , (1000094,   3,  536870932) /* SoundTable */
     , (1000094,   6,   67108990) /* PaletteBase */
     , (1000094,   7,  268436448) /* ClothingBase */
     , (1000094,   8,  100667343) /* Icon */
     , (1000094,  22,  872415275) /* PhysicsEffectTable */
     , (1000094,  36,  234881046) /* MutateFilter */
     , (1000094,  46,  939524130) /* TsysMutationFilter */
     , (1000094,  52,  100686604) /* IconUnderlay */;
