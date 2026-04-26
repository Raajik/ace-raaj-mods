DELETE FROM `weenie` WHERE `class_Id` = 1000072;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000072, 'PortalArchway', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000072,   1,        128) /* ItemType - Misc */
     , (1000072,   8,        500) /* Mass */
     , (1000072,  16,         32) /* ItemUseable - Remote */
     , (1000072,  19,          0) /* Value */
     , (1000072,  38,         50) /* ResistLockpick */
     , (1000072,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000072,   1, True ) /* Stuck */
     , (1000072,  11, False) /* IgnoreCollisions */
     , (1000072,  12, True ) /* ReportCollisions */
     , (1000072,  13, False) /* Ethereal */
     , (1000072,  14, False) /* GravityStatus */
     , (1000072,  19, True ) /* Attackable */
     , (1000072,  24, True ) /* UiHidden */
     , (1000072,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000072,  11,     300) /* ResetInterval */
     , (1000072,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000072,   1, 'PortalArchway') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000072,   1,   33554511) /* Setup */
     , (1000072,   3,  536870932) /* SoundTable */
     , (1000072,   6,   67108990) /* PaletteBase */
     , (1000072,   7,  268436448) /* ClothingBase */
     , (1000072,   8,  100667343) /* Icon */
     , (1000072,  22,  872415275) /* PhysicsEffectTable */
     , (1000072,  36,  234881046) /* MutateFilter */
     , (1000072,  46,  939524130) /* TsysMutationFilter */
     , (1000072,  52,  100686604) /* IconUnderlay */;
