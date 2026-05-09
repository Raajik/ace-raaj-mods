DELETE FROM `weenie` WHERE `class_Id` = 802262;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802262, 'Dark Crypt LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802262,   1,       2048) /* ItemType - Gem */
     , (802262,   3,         39) /* PaletteTemplate - Black */
     , (802262,   5,          5) /* EncumbranceVal */
     , (802262,   8,          5) /* Mass */
     , (802262,  11,          1) /* MaxStackSize */
     , (802262,  12,          1) /* StackSize */
     , (802262,  13,          5) /* StackUnitEncumbrance */
     , (802262,  14,          5) /* StackUnitMass */
     , (802262,  15,        100) /* StackUnitValue */
     , (802262,  16,          8) /* ItemUseable - Contained */
     , (802262,  17,         83) /* RareId */
     , (802262,  18,        128) /* UiEffects - Frost */
     , (802262,  19,        100) /* Value */
     , (802262,  33,          1) /* Bonded - Bonded */
     , (802262,  92,         -1) /* Structure */
     , (802262,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802262,  94,         16) /* TargetType - Creature */
     , (802262, 106,        325) /* ItemSpellcraft */
     , (802262, 107,      10000) /* ItemCurMana */
     , (802262, 108,      10000) /* ItemMaxMana */
     , (802262, 150,        103) /* HookPlacement - Hook */
     , (802262, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802262,  22, True ) /* Inscribable */
     , (802262,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802262, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802262,   1, 'Dark Crypt (LR)') /* Name */
     , (802262,  16, 'This card can be used to cast Prodigal Void Mastery for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802262,   1,   33554809) /* Setup */
     , (802262,   3,  536870932) /* SoundTable */
     , (802262,   6,   67111919) /* PaletteBase */
     , (802262,   8,  100688622) /* Icon */
     , (802262,  22,  872415275) /* PhysicsEffectTable */
     , (802262,  28,       5436) /* Spell - Prodigal Two Handed Combat Mastery */;
