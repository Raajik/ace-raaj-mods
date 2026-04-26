DELETE FROM `weenie` WHERE `class_Id` = 803373;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803373, 'DrakinWarchiefGem', 1, '2024-01-14 06:40:56') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803373,   1,        128) /* ItemType - Misc */
     , (803373,   3,         39) /* PaletteTemplate - Black */
     , (803373,   5,          5) /* EncumbranceVal */
     , (803373,   8,          5) /* Mass */
     , (803373,  11,          1) /* MaxStackSize */
     , (803373,  12,          1) /* StackSize */
     , (803373,  13,          5) /* StackUnitEncumbrance */
     , (803373,  14,          5) /* StackUnitMass */
     , (803373,  15,        500) /* StackUnitValue */
     , (803373,  18,          1) /* UiEffects - Magical */
     , (803373,  19,        500) /* Value */
     , (803373,  33,          1) /* Bonded - Bonded */
     , (803373,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803373,  94,         16) /* TargetType - Creature */
     , (803373, 106,        325) /* ItemSpellcraft */
     , (803373, 107,      10000) /* ItemCurMana */
     , (803373, 108,      10000) /* ItemMaxMana */
     , (803373, 114,          1) /* Attuned - Attuned */
     , (803373, 150,        103) /* HookPlacement - Hook */
     , (803373, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803373,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803373,   1, 'Warchief Crest') /* Name */
     , (803373,  33, 'WCCrest') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803373,   1, 0x02000179) /* Setup */
     , (803373,   3, 0x20000014) /* SoundTable */
     , (803373,   6, 0x04000BEF) /* PaletteBase */
     , (803373,   8,  100673811) /* Icon */
     , (803373,  22, 0x3400002B) /* PhysicsEffectTable */;

