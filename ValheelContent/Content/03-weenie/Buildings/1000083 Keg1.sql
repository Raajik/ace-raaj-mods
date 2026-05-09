DELETE FROM `weenie` WHERE `class_Id` = 1000083;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000083, 'Keg1', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000083,   1,        128) /* ItemType - Misc */
     , (1000083,   8,        500) /* Mass */
     , (1000083,  16,         32) /* ItemUseable - Remote */
     , (1000083,  19,          0) /* Value */
     , (1000083,  38,         50) /* ResistLockpick */
     , (1000083,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000083,   1, True ) /* Stuck */
     , (1000083,  11, False) /* IgnoreCollisions */
     , (1000083,  12, True ) /* ReportCollisions */
     , (1000083,  13, False) /* Ethereal */
     , (1000083,  14, False) /* GravityStatus */
     , (1000083,  19, True ) /* Attackable */
     , (1000083,  24, True ) /* UiHidden */
     , (1000083,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000083,  11,     300) /* ResetInterval */
     , (1000083,  39,     1.2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000083,   1, 'Keg1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000083,   1,   33560717) /* Setup */
     , (1000083,   3,  536870932) /* SoundTable */
     , (1000083,   6,   67108990) /* PaletteBase */
     , (1000083,   7,  268436448) /* ClothingBase */
     , (1000083,   8,  100667343) /* Icon */
     , (1000083,  22,  872415275) /* PhysicsEffectTable */
     , (1000083,  36,  234881046) /* MutateFilter */
     , (1000083,  46,  939524130) /* TsysMutationFilter */
     , (1000083,  52,  100686604) /* IconUnderlay */;
