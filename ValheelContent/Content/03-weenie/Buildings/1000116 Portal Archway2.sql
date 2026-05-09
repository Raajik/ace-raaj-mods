DELETE FROM `weenie` WHERE `class_Id` = 1000116;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000116, 'PortalArchway2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000116,   1,        128) /* ItemType - Misc */
     , (1000116,   8,        500) /* Mass */
     , (1000116,  16,         32) /* ItemUseable - Remote */
     , (1000116,  19,          0) /* Value */
     , (1000116,  38,         50) /* ResistLockpick */
     , (1000116,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000116,   1, True ) /* Stuck */
     , (1000116,  11, False) /* IgnoreCollisions */
     , (1000116,  12, True ) /* ReportCollisions */
     , (1000116,  13, False) /* Ethereal */
     , (1000116,  14, False) /* GravityStatus */
     , (1000116,  19, True ) /* Attackable */
     , (1000116,  24, True ) /* UiHidden */
     , (1000116,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000116,  11,     300) /* ResetInterval */
     , (1000116,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000116,   1, 'PortalArchway2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000116,   1,   33554511) /* Setup */
     , (1000116,   3,  536870932) /* SoundTable */
     , (1000116,   6,   67108990) /* PaletteBase */
     , (1000116,   7,  268436448) /* ClothingBase */
     , (1000116,   8,  100667343) /* Icon */
     , (1000116,  22,  872415275) /* PhysicsEffectTable */
     , (1000116,  36,  234881046) /* MutateFilter */
     , (1000116,  46,  939524130) /* TsysMutationFilter */
     , (1000116,  52,  100686604) /* IconUnderlay */;
