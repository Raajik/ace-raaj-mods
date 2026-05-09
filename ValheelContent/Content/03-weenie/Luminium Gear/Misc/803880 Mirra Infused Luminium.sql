DELETE FROM `weenie` WHERE `class_Id` = 803880;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803880, 'Mirra Infused Luminium', 51, '2025-03-12 09:06:30') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803880,   1,        128) /* ItemType - Misc */
     , (803880,   3,         39) /* PaletteTemplate - Black */
     , (803880,   5,          1) /* EncumbranceVal */
     , (803880,   9,          0) /* ValidLocations - None */
     , (803880,  11,        500) /* MaxStackSize */
     , (803880,  12,          1) /* StackSize */
     , (803880,  16,          1) /* ItemUseable - No */
     , (803880,  18,          1) /* UiEffects - Magical */
     , (803880,  19,      10000) /* Value */
     , (803880,  33,          1) /* Bonded - Bonded */
     , (803880,  93,       1044) /* PhysicsState */
     , (803880,  94,         16) /* TargetType - Creature */
     , (803880, 114,          1) /* Attuned - Attuned */
     , (803880, 150,        103) /* HookPlacement - Hook */
     , (803880, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803880,  22, True ) /* Inscribable */
     , (803880,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803880,   1, 'Mirra Infused Luminium') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803880,   1, 0x02000921) /* Setup */
     , (803880,   3, 0x20000014) /* SoundTable */
     , (803880,   6, 0x04000BEF) /* PaletteBase */
     , (803880,   7, 0x1000010B) /* ClothingBase */
     , (803880,   8, 0x060013F7) /* Icon */
     , (803880,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (803880,  52,  100676442) /* IconUnderlay */;