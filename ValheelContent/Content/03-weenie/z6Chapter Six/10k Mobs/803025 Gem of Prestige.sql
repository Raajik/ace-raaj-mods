DELETE FROM `weenie` WHERE `class_Id` = 803025;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803025, 'Gem of Prestige', 51, '2024-07-23 05:30:32') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803025,   1,        128) /* ItemType - Gem */
     , (803025,   3,         39) /* PaletteTemplate - Black */
     , (803025,   5,          0) /* EncumbranceVal */
     , (803025,   9,          0) /* ValidLocations - None */
     , (803025,  11,        100) /* MaxStackSize */
     , (803025,  12,          1) /* StackSize */
     , (803025,  18,          1) /* UiEffects - Magical */
     , (803025,  19,      10000) /* Value */
     , (803025,  33,          1) /* Bonded - Bonded */
     , (803025,  93,       1044) /* PhysicsState */
     , (803025, 114,          1) /* Attuned - Attuned */
     , (803025, 150,        103) /* HookPlacement - Hook */
     , (803025, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803025,  22, True ) /* Inscribable */
     , (803025,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803025,   1, 'Gem of Prestige') /* Name */
     , (803025,  16, 'Hand this gem to the Daily Token Collector in Adventurer''s Haven. This gem will increase your overall Prestige by one.') /* LongDesc */
     , (803025,  20, 'Gems of Prestige') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803025,   1, 0x02000921) /* Setup */
     , (803025,   3, 0x20000014) /* SoundTable */
     , (803025,   6, 0x04000BEF) /* PaletteBase */
     , (803025,   7, 0x1000010B) /* ClothingBase */
     , (803025,   8, 0x06002295) /* Icon */
     , (803025,  22, 0x3400002B) /* PhysicsEffectTable */;