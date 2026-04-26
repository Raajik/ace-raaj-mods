DELETE FROM `weenie` WHERE `class_Id` = 1000079;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000079, 'Mural2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000079,   1,        128) /* ItemType - Misc */
     , (1000079,   8,        500) /* Mass */
     , (1000079,  16,         32) /* ItemUseable - Remote */
     , (1000079,  19,          0) /* Value */
     , (1000079,  38,         50) /* ResistLockpick */
     , (1000079,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000079,   1, True ) /* Stuck */
     , (1000079,  11, False) /* IgnoreCollisions */
     , (1000079,  12, True ) /* ReportCollisions */
     , (1000079,  13, False) /* Ethereal */
     , (1000079,  14, False) /* GravityStatus */
     , (1000079,  19, True ) /* Attackable */
     , (1000079,  24, True ) /* UiHidden */
     , (1000079,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000079,  11,     300) /* ResetInterval */
     , (1000079,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000079,   1, 'Mural2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000079,   1,   33554833) /* Setup */
     , (1000079,   3,  536870932) /* SoundTable */
     , (1000079,   6,   67108990) /* PaletteBase */
     , (1000079,   7,  268436448) /* ClothingBase */
     , (1000079,   8,  100667343) /* Icon */
     , (1000079,  22,  872415275) /* PhysicsEffectTable */
     , (1000079,  36,  234881046) /* MutateFilter */
     , (1000079,  46,  939524130) /* TsysMutationFilter */
     , (1000079,  52,  100686604) /* IconUnderlay */;
