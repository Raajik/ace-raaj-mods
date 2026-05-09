DELETE FROM `weenie` WHERE `class_Id` = 1000077;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000077, 'Statue12', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000077,   1,        128) /* ItemType - Misc */
     , (1000077,   8,        500) /* Mass */
     , (1000077,  16,         32) /* ItemUseable - Remote */
     , (1000077,  19,          0) /* Value */
     , (1000077,  38,         50) /* ResistLockpick */
     , (1000077,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000077,   1, True ) /* Stuck */
     , (1000077,  11, False) /* IgnoreCollisions */
     , (1000077,  12, True ) /* ReportCollisions */
     , (1000077,  13, False) /* Ethereal */
     , (1000077,  14, False) /* GravityStatus */
     , (1000077,  19, True ) /* Attackable */
     , (1000077,  24, True ) /* UiHidden */
     , (1000077,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000077,  11,     300) /* ResetInterval */
     , (1000077,  39,       0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000077,   1, 'Statue1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000077,   1,   33556953) /* Setup */
     , (1000077,   3,  536870932) /* SoundTable */
     , (1000077,   6,   67108990) /* PaletteBase */
     , (1000077,   7,  268436448) /* ClothingBase */
     , (1000077,   8,  100667343) /* Icon */
     , (1000077,  22,  872415275) /* PhysicsEffectTable */
     , (1000077,  36,  234881046) /* MutateFilter */
     , (1000077,  46,  939524130) /* TsysMutationFilter */
     , (1000077,  52,  100686604) /* IconUnderlay */;
