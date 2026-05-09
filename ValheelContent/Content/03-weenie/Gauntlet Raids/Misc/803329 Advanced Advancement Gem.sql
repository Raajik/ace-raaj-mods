DELETE FROM `weenie` WHERE `class_Id` = 803329;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803329, 'Advanced Advancement Gem', 51, '2024-07-23 04:56:25') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803329,   1,        128) /* ItemType - Gem */
     , (803329,   3,         39) /* PaletteTemplate - Black */
     , (803329,   5,          5) /* EncumbranceVal */
     , (803329,   8,          5) /* Mass */
     , (803329,  11,        100) /* MaxStackSize */
     , (803329,  12,          1) /* StackSize */
     , (803329,  13,          5) /* StackUnitEncumbrance */
     , (803329,  14,          5) /* StackUnitMass */
     , (803329,  15,      12500) /* StackUnitValue */
     , (803329,  18,          2) /* UiEffects - Magical */
     , (803329,  19,      12500) /* Value */
     , (803329,  33,          1) /* Bonded - Bonded */
     , (803329,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803329, 114,          0) /* Attuned - Attuned */
     , (803329, 150,        103) /* HookPlacement - Hook */
     , (803329, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803329,  22, True ) /* Inscribable */
     , (803329,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803329,   1, 'Advanced Advancement Gem') /* Name */
     , (803329,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you Experience.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803329,   1, 0x020007B7) /* Setup */
     , (803329,   3, 0x20000014) /* SoundTable */
     , (803329,   7, 0x100001FD) /* ClothingBase */
     , (803329,   8, 0x06002D2C) /* Icon */
     , (803329,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803329,  52, 0x06003353) /* IconUnderlay */;