DELETE FROM `weenie` WHERE `class_Id` = 1000095;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000095, 'Snow1', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000095,   1,        128) /* ItemType - Misc */
     , (1000095,   8,        500) /* Mass */
     , (1000095,  16,         32) /* ItemUseable - Remote */
     , (1000095,  19,          0) /* Value */
     , (1000095,  38,         50) /* ResistLockpick */
     , (1000095,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000095,   1, True ) /* Stuck */
     , (1000095,  11, False) /* IgnoreCollisions */
     , (1000095,  12, True ) /* ReportCollisions */
     , (1000095,  13, False) /* Ethereal */
     , (1000095,  14, False) /* GravityStatus */
     , (1000095,  19, True ) /* Attackable */
     , (1000095,  24, True ) /* UiHidden */
     , (1000095,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000095,  11,     300) /* ResetInterval */
     , (1000095,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000095,   1, 'Snow1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000095,   1,   33556227) /* Setup */
     , (1000095,   3,  536870932) /* SoundTable */
     , (1000095,   6,   67108990) /* PaletteBase */
     , (1000095,   7,  268436448) /* ClothingBase */
     , (1000095,   8,  100667343) /* Icon */
     , (1000095,  22,  872415275) /* PhysicsEffectTable */
     , (1000095,  36,  234881046) /* MutateFilter */
     , (1000095,  46,  939524130) /* TsysMutationFilter */
     , (1000095,  52,  100686604) /* IconUnderlay */;
