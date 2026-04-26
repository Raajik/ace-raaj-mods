DELETE FROM `weenie` WHERE `class_Id` = 803296;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803296, 'LandClaimDeed', 1, '2024-04-13 10:35:25') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803296,   1,        128) /* ItemType - Gem */
     , (803296,   3,         39) /* PaletteTemplate - Black */
     , (803296,   5,          5) /* EncumbranceVal */
     , (803296,   8,          5) /* Mass */
     , (803296,  16,          1) /* ItemUseable - No */
     , (803296,  18,          1) /* UiEffects - Magical */
     , (803296,  19,          1) /* Value */
     , (803296,  33,          1) /* Bonded - Bonded */
     , (803296,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803296, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803296,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803296,   1, 'Land Claim Deed') /* Name */
     , (803296,  33, 'LandBlockClaim') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803296,   1, 0x02000B8B) /* Setup */
     , (803296,   3, 0x20000014) /* SoundTable */
     , (803296,   8, 0x060022DD) /* Icon */
     , (803296,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803296,  52, 0x0600335A) /* IconUnderlay */;