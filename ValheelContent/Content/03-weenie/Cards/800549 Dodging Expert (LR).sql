DELETE FROM `weenie` WHERE `class_Id` = 800549;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800549, 'Dodging Expert', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800549,   1,       2048) /* ItemType - Gem */
     , (800549,   3,         39) /* PaletteTemplate - Black */
     , (800549,   5,          5) /* EncumbranceVal */
     , (800549,   8,          5) /* Mass */
     , (800549,  11,          1) /* MaxStackSize */
     , (800549,  12,          1) /* StackSize */
     , (800549,  13,          5) /* StackUnitEncumbrance */
     , (800549,  14,          5) /* StackUnitMass */
     , (800549,  15,          100) /* StackUnitValue */
     , (800549,  16,          8) /* ItemUseable - Contained */
     , (800549,  17,        109) /* RareId */
     , (800549,  18,        128) /* UiEffects - Frost */
     , (800549,  19,          100) /* Value */
     , (800549,  33,          1) /* Bonded - Bonded */
     , (800549,  92,         -1) /* Structure */
     , (800549,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800549,  94,         16) /* TargetType - Creature */
     , (800549, 106,        325) /* ItemSpellcraft */
     , (800549, 107,      10000) /* ItemCurMana */
     , (800549, 108,      10000) /* ItemMaxMana */
     , (800549, 109,          0) /* ItemDifficulty */
     , (800549, 150,        103) /* HookPlacement - Hook */
     , (800549, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800549,  22, True ) /* Inscribable */
     , (800549,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800549, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800549,   1, 'Dodging Expert (LR)') /* Name */
     , (800549,  16, 'This card can be used to cast Prodigal Impregnability for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800549,   1,   33554809) /* Setup */
     , (800549,   3,  536870932) /* SoundTable */
     , (800549,   6,   67111919) /* PaletteBase */
     , (800549,   8,  100688622) /* Icon */
     , (800549,  22,  872415275) /* PhysicsEffectTable */
     , (800549,  28,       3711) /* Spell - Prodigal Impregnability */;
