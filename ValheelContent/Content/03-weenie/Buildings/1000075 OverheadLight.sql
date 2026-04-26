DELETE FROM `weenie` WHERE `class_Id` = 1000075;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000075, 'OverheadLight', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000075,   1,        128) /* ItemType - Misc */
     , (1000075,   8,        500) /* Mass */
     , (1000075,  16,         32) /* ItemUseable - Remote */
     , (1000075,  19,          0) /* Value */
     , (1000075,  38,         50) /* ResistLockpick */
     , (1000075,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000075,   1, True ) /* Stuck */
     , (1000075,  11, False) /* IgnoreCollisions */
     , (1000075,  12, True ) /* ReportCollisions */
     , (1000075,  13, False) /* Ethereal */
     , (1000075,  14, False) /* GravityStatus */
     , (1000075,  19, True ) /* Attackable */
     , (1000075,  24, True ) /* UiHidden */
     , (1000075,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000075,  11,     300) /* ResetInterval */
     , (1000075,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000075,   1, 'OverheadLight') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000075,   1,   33556151) /* Setup */
     , (1000075,   3,  536870932) /* SoundTable */
     , (1000075,   6,   67108990) /* PaletteBase */
     , (1000075,   7,  268436448) /* ClothingBase */
     , (1000075,   8,  100667343) /* Icon */
     , (1000075,  22,  872415275) /* PhysicsEffectTable */
     , (1000075,  36,  234881046) /* MutateFilter */
     , (1000075,  46,  939524130) /* TsysMutationFilter */
     , (1000075,  52,  100686604) /* IconUnderlay */;
