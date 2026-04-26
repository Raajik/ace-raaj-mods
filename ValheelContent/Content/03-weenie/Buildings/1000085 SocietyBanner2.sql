DELETE FROM `weenie` WHERE `class_Id` = 1000085;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000085, 'SocietyBanner2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000085,   1,        128) /* ItemType - Misc */
     , (1000085,   8,        500) /* Mass */
     , (1000085,  16,         32) /* ItemUseable - Remote */
     , (1000085,  19,          0) /* Value */
     , (1000085,  38,         50) /* ResistLockpick */
     , (1000085,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000085,   1, True ) /* Stuck */
     , (1000085,  11, False) /* IgnoreCollisions */
     , (1000085,  12, True ) /* ReportCollisions */
     , (1000085,  13, False) /* Ethereal */
     , (1000085,  14, False) /* GravityStatus */
     , (1000085,  19, True ) /* Attackable */
     , (1000085,  24, True ) /* UiHidden */
     , (1000085,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000085,  11,     300) /* ResetInterval */
     , (1000085,  39,     1.2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000085,   1, 'SocietyBanner2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000085,   1,   33560501) /* Setup */
     , (1000085,   3,  536870932) /* SoundTable */
     , (1000085,   6,   67108990) /* PaletteBase */
     , (1000085,   7,  268436448) /* ClothingBase */
     , (1000085,   8,  100667343) /* Icon */
     , (1000085,  22,  872415275) /* PhysicsEffectTable */
     , (1000085,  36,  234881046) /* MutateFilter */
     , (1000085,  46,  939524130) /* TsysMutationFilter */
     , (1000085,  52,  100686604) /* IconUnderlay */;
