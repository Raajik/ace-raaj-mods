DELETE FROM `weenie` WHERE `class_Id` = 1000084;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000084, 'SocietyBanner1', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000084,   1,        128) /* ItemType - Misc */
     , (1000084,   8,        500) /* Mass */
     , (1000084,  16,         32) /* ItemUseable - Remote */
     , (1000084,  19,          0) /* Value */
     , (1000084,  38,         50) /* ResistLockpick */
     , (1000084,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000084,   1, True ) /* Stuck */
     , (1000084,  11, False) /* IgnoreCollisions */
     , (1000084,  12, True ) /* ReportCollisions */
     , (1000084,  13, False) /* Ethereal */
     , (1000084,  14, False) /* GravityStatus */
     , (1000084,  19, True ) /* Attackable */
     , (1000084,  24, True ) /* UiHidden */
     , (1000084,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000084,  11,     300) /* ResetInterval */
     , (1000084,  39,     1.2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000084,   1, 'SocietyBanner1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000084,   1,   33560502) /* Setup */
     , (1000084,   3,  536870932) /* SoundTable */
     , (1000084,   6,   67108990) /* PaletteBase */
     , (1000084,   7,  268436448) /* ClothingBase */
     , (1000084,   8,  100667343) /* Icon */
     , (1000084,  22,  872415275) /* PhysicsEffectTable */
     , (1000084,  36,  234881046) /* MutateFilter */
     , (1000084,  46,  939524130) /* TsysMutationFilter */
     , (1000084,  52,  100686604) /* IconUnderlay */;
