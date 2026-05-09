DELETE FROM `weenie` WHERE `class_Id` = 803328;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803328, 'Moderate Advancement Gem', 51, '2024-07-23 04:59:07') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803328,   1,        128) /* ItemType - Gem */
     , (803328,   3,         39) /* PaletteTemplate - Black */
     , (803328,   5,          5) /* EncumbranceVal */
     , (803328,   8,          5) /* Mass */
     , (803328,  11,        100) /* MaxStackSize */
     , (803328,  12,          1) /* StackSize */
     , (803328,  13,          5) /* StackUnitEncumbrance */
     , (803328,  14,          5) /* StackUnitMass */
     , (803328,  15,       5000) /* StackUnitValue */
     , (803328,  18,          1) /* UiEffects - Magical */
     , (803328,  19,       5000) /* Value */
     , (803328,  33,          1) /* Bonded - Bonded */
     , (803328,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803328, 114,          0) /* Attuned - Attuned */
     , (803328, 150,        103) /* HookPlacement - Hook */
     , (803328, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803328,  22, True ) /* Inscribable */
     , (803328,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803328,   1, 'Moderate Advancement Gem') /* Name */
     , (803328,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will grant you Experience.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803328,   1, 0x020007B7) /* Setup */
     , (803328,   3, 0x20000014) /* SoundTable */
     , (803328,   7, 0x100001FD) /* ClothingBase */
     , (803328,   8, 0x06002D2C) /* Icon */
     , (803328,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803328,  52, 0x06003353) /* IconUnderlay */;