DELETE FROM `weenie` WHERE `class_Id` = 1000078;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000078, 'Mural1', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000078,   1,        128) /* ItemType - Misc */
     , (1000078,   8,        500) /* Mass */
     , (1000078,  16,         32) /* ItemUseable - Remote */
     , (1000078,  19,          0) /* Value */
     , (1000078,  38,         50) /* ResistLockpick */
     , (1000078,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000078,   1, True ) /* Stuck */
     , (1000078,  11, False) /* IgnoreCollisions */
     , (1000078,  12, True ) /* ReportCollisions */
     , (1000078,  13, False) /* Ethereal */
     , (1000078,  14, False) /* GravityStatus */
     , (1000078,  19, True ) /* Attackable */
     , (1000078,  24, True ) /* UiHidden */
     , (1000078,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000078,  11,     300) /* ResetInterval */
     , (1000078,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000078,   1, 'Mural1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000078,   1,   33554832) /* Setup */
     , (1000078,   3,  536870932) /* SoundTable */
     , (1000078,   6,   67108990) /* PaletteBase */
     , (1000078,   7,  268436448) /* ClothingBase */
     , (1000078,   8,  100667343) /* Icon */
     , (1000078,  22,  872415275) /* PhysicsEffectTable */
     , (1000078,  36,  234881046) /* MutateFilter */
     , (1000078,  46,  939524130) /* TsysMutationFilter */
     , (1000078,  52,  100686604) /* IconUnderlay */;
