DELETE FROM `weenie` WHERE `class_Id` = 1000073;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000073, 'Drapery', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000073,   1,        128) /* ItemType - Misc */
     , (1000073,   8,        500) /* Mass */
     , (1000073,  16,         32) /* ItemUseable - Remote */
     , (1000073,  19,          0) /* Value */
     , (1000073,  38,         50) /* ResistLockpick */
     , (1000073,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000073,   1, True ) /* Stuck */
     , (1000073,  11, False) /* IgnoreCollisions */
     , (1000073,  12, True ) /* ReportCollisions */
     , (1000073,  13, False) /* Ethereal */
     , (1000073,  14, False) /* GravityStatus */
     , (1000073,  19, True ) /* Attackable */
     , (1000073,  24, True ) /* UiHidden */
     , (1000073,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000073,  11,     300) /* ResetInterval */
     , (1000073,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000073,   1, 'Drapery') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000073,   1,   33554822) /* Setup */
     , (1000073,   3,  536870932) /* SoundTable */
     , (1000073,   6,   67108990) /* PaletteBase */
     , (1000073,   7,  268436448) /* ClothingBase */
     , (1000073,   8,  100667343) /* Icon */
     , (1000073,  22,  872415275) /* PhysicsEffectTable */
     , (1000073,  36,  234881046) /* MutateFilter */
     , (1000073,  46,  939524130) /* TsysMutationFilter */
     , (1000073,  52,  100686604) /* IconUnderlay */;
