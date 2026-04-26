DELETE FROM `weenie` WHERE `class_Id` = 802918;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802918, 'AbilityTest', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802918,   1,       2048) /* ItemType - Gem */
     , (802918,   3,         39) /* PaletteTemplate - Black */
     , (802918,   5,          5) /* EncumbranceVal */
     , (802918,   8,          5) /* Mass */
     , (802918,  11,         50) /* MaxStackSize */
     , (802918,  12,          1) /* StackSize */
     , (802918,  13,          5) /* StackUnitEncumbrance */
     , (802918,  14,          5) /* StackUnitMass */
     , (802918,  15,       5000) /* StackUnitValue */
     , (802918,  16,          8) /* ItemUseable - Contained */
     , (802918,  18,          0) /* UiEffects - Magical */
     , (802918,  19,       5000) /* Value */
     , (802918,  33,          1) /* Bonded - Bonded */
     , (802918,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802918,  94,         16) /* TargetType - Creature */
     , (802918, 106,        325) /* ItemSpellcraft */
     , (802918, 107,      10000) /* ItemCurMana */
     , (802918, 108,      10000) /* ItemMaxMana */
     , (802918, 114,          1) /* Attuned - Attuned */
     , (802918, 280,        550) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802918,  22, True ) /* Inscribable */
     , (802918,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802918,   1, 'Ability Test Gem') /* Name */
     , (802918,  14, 'Use this item to use X ability.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802918, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802918,   1, 0x02000E59) /* Setup */
     , (802918,   3, 0x20000014) /* SoundTable */
     , (802918,   8,  100674706) /* Icon */
     , (802918,  22, 0x3400002B) /* PhysicsEffectTable */;

