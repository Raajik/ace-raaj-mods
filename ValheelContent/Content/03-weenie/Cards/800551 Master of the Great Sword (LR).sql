DELETE FROM `weenie` WHERE `class_Id` = 800551;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800551, 'Master of the Great Sword', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800551,   1,       2048) /* ItemType - Gem */
     , (800551,   3,         39) /* PaletteTemplate - Black */
     , (800551,   5,          5) /* EncumbranceVal */
     , (800551,   8,          5) /* Mass */
     , (800551,  11,          1) /* MaxStackSize */
     , (800551,  12,          1) /* StackSize */
     , (800551,  13,          5) /* StackUnitEncumbrance */
     , (800551,  14,          5) /* StackUnitMass */
     , (800551,  15,          100) /* StackUnitValue */
     , (800551,  16,          8) /* ItemUseable - Contained */
     , (800551,  17,         83) /* RareId */
     , (800551,  18,        128) /* UiEffects - Frost */
     , (800551,  19,          100) /* Value */
     , (800551,  33,          1) /* Bonded - Bonded */
     , (800551,  92,         -1) /* Structure */
     , (800551,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800551,  94,         16) /* TargetType - Creature */
     , (800551, 106,        325) /* ItemSpellcraft */
     , (800551, 107,      10000) /* ItemCurMana */
     , (800551, 108,      10000) /* ItemMaxMana */
     , (800551, 150,        103) /* HookPlacement - Hook */
     , (800551, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800551,  22, True ) /* Inscribable */
     , (800551,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800551, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800551,   1, 'Master of the Great Sword (LR)') /* Name */
     , (800551,  16, 'This card can be used to cast Prodigal Two Handed Mastery for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800551,   1,   33554809) /* Setup */
     , (800551,   3,  536870932) /* SoundTable */
     , (800551,   6,   67111919) /* PaletteBase */
     , (800551,   8,  100688622) /* Icon */
     , (800551,  22,  872415275) /* PhysicsEffectTable */
     , (800551,  28,       5026) /* Spell - Prodigal Two Handed Combat Mastery */;
