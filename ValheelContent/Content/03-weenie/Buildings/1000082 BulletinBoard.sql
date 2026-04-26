DELETE FROM `weenie` WHERE `class_Id` = 1000082;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000082, 'BulletinBoard', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000082,   1,        128) /* ItemType - Misc */
     , (1000082,   8,        500) /* Mass */
     , (1000082,  16,         32) /* ItemUseable - Remote */
     , (1000082,  19,          0) /* Value */
     , (1000082,  38,         50) /* ResistLockpick */
     , (1000082,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000082,   1, True ) /* Stuck */
     , (1000082,  11, False) /* IgnoreCollisions */
     , (1000082,  12, True ) /* ReportCollisions */
     , (1000082,  13, False) /* Ethereal */
     , (1000082,  14, False) /* GravityStatus */
     , (1000082,  19, True ) /* Attackable */
     , (1000082,  24, True ) /* UiHidden */
     , (1000082,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000082,  11,     300) /* ResetInterval */
     , (1000082,  39,     1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000082,   1, 'BulletinBoard') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000082,   1,   33560934) /* Setup */
     , (1000082,   3,  536870932) /* SoundTable */
     , (1000082,   6,   67108990) /* PaletteBase */
     , (1000082,   7,  268436448) /* ClothingBase */
     , (1000082,   8,  100667343) /* Icon */
     , (1000082,  22,  872415275) /* PhysicsEffectTable */
     , (1000082,  36,  234881046) /* MutateFilter */
     , (1000082,  46,  939524130) /* TsysMutationFilter */
     , (1000082,  52,  100686604) /* IconUnderlay */;
