DELETE FROM `weenie` WHERE `class_Id` = 1000096;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000096, 'Elemental Portal Base', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000096,   1,        128) /* ItemType - Misc */
     , (1000096,   8,        500) /* Mass */
     , (1000096,  16,         32) /* ItemUseable - Remote */
     , (1000096,  19,          0) /* Value */
     , (1000096,  38,         50) /* ResistLockpick */
     , (1000096,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000096,   1, True ) /* Stuck */
     , (1000096,  11, False) /* IgnoreCollisions */
     , (1000096,  12, True ) /* ReportCollisions */
     , (1000096,  13, False) /* Ethereal */
     , (1000096,  14, False) /* GravityStatus */
     , (1000096,  19, True ) /* Attackable */
     , (1000096,  24, True ) /* UiHidden */
     , (1000096,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000096,  11,     300) /* ResetInterval */
     , (1000096,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000096,   1, 'Elemental Portal Base') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000096,   1,   33557345) /* Setup */
     , (1000096,   3,  536870932) /* SoundTable */
     , (1000096,   6,   67108990) /* PaletteBase */
     , (1000096,   7,  268436448) /* ClothingBase */
     , (1000096,   8,  100667343) /* Icon */
     , (1000096,  22,  872415275) /* PhysicsEffectTable */
     , (1000096,  36,  234881046) /* MutateFilter */
     , (1000096,  46,  939524130) /* TsysMutationFilter */
     , (1000096,  52,  100686604) /* IconUnderlay */;
