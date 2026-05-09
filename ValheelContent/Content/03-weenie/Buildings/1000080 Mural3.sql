DELETE FROM `weenie` WHERE `class_Id` = 1000080;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000080, 'Mural3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000080,   1,        128) /* ItemType - Misc */
     , (1000080,   8,        500) /* Mass */
     , (1000080,  16,         32) /* ItemUseable - Remote */
     , (1000080,  19,          0) /* Value */
     , (1000080,  38,         50) /* ResistLockpick */
     , (1000080,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000080,   1, True ) /* Stuck */
     , (1000080,  11, False) /* IgnoreCollisions */
     , (1000080,  12, True ) /* ReportCollisions */
     , (1000080,  13, False) /* Ethereal */
     , (1000080,  14, False) /* GravityStatus */
     , (1000080,  19, True ) /* Attackable */
     , (1000080,  24, True ) /* UiHidden */
     , (1000080,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000080,  11,     300) /* ResetInterval */
     , (1000080,  39,     1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000080,   1, 'Mural3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000080,   1,   33559172) /* Setup */
     , (1000080,   3,  536870932) /* SoundTable */
     , (1000080,   6,   67108990) /* PaletteBase */
     , (1000080,   7,  268436448) /* ClothingBase */
     , (1000080,   8,  100667343) /* Icon */
     , (1000080,  22,  872415275) /* PhysicsEffectTable */
     , (1000080,  36,  234881046) /* MutateFilter */
     , (1000080,  46,  939524130) /* TsysMutationFilter */
     , (1000080,  52,  100686604) /* IconUnderlay */;
