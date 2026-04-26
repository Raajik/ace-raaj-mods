DELETE FROM `weenie` WHERE `class_Id` = 1000081;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000081, 'MountedShield', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000081,   1,        128) /* ItemType - Misc */
     , (1000081,   8,        500) /* Mass */
     , (1000081,  16,         32) /* ItemUseable - Remote */
     , (1000081,  19,          0) /* Value */
     , (1000081,  38,         50) /* ResistLockpick */
     , (1000081,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000081,   1, True ) /* Stuck */
     , (1000081,  11, False) /* IgnoreCollisions */
     , (1000081,  12, True ) /* ReportCollisions */
     , (1000081,  13, False) /* Ethereal */
     , (1000081,  14, False) /* GravityStatus */
     , (1000081,  19, True ) /* Attackable */
     , (1000081,  24, True ) /* UiHidden */
     , (1000081,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000081,  11,     300) /* ResetInterval */
     , (1000081,  39,     1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000081,   1, 'MountedShield') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000081,   1,   33561098) /* Setup */
     , (1000081,   3,  536870932) /* SoundTable */
     , (1000081,   6,   67108990) /* PaletteBase */
     , (1000081,   7,  268436448) /* ClothingBase */
     , (1000081,   8,  100667343) /* Icon */
     , (1000081,  22,  872415275) /* PhysicsEffectTable */
     , (1000081,  36,  234881046) /* MutateFilter */
     , (1000081,  46,  939524130) /* TsysMutationFilter */
     , (1000081,  52,  100686604) /* IconUnderlay */;
