DELETE FROM `weenie` WHERE `class_Id` = 802233;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802233, 'Heavy Handed LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802233,   1,       2048) /* ItemType - Gem */
     , (802233,   3,         39) /* PaletteTemplate - Black */
     , (802233,   5,          5) /* EncumbranceVal */
     , (802233,   8,          5) /* Mass */
     , (802233,  11,          1) /* MaxStackSize */
     , (802233,  12,          1) /* StackSize */
     , (802233,  13,          5) /* StackUnitEncumbrance */
     , (802233,  14,          5) /* StackUnitMass */
     , (802233,  15,          100) /* StackUnitValue */
     , (802233,  16,          8) /* ItemUseable - Contained */
     , (802233,  17,         83) /* RareId */
     , (802233,  18,        128) /* UiEffects - Frost */
     , (802233,  19,          100) /* Value */
     , (802233,  33,          1) /* Bonded - Bonded */
     , (802233,  92,         -1) /* Structure */
     , (802233,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802233,  94,         16) /* TargetType - Creature */
     , (802233, 106,        325) /* ItemSpellcraft */
     , (802233, 107,      10000) /* ItemCurMana */
     , (802233, 108,      10000) /* ItemMaxMana */
     , (802233, 150,        103) /* HookPlacement - Hook */
     , (802233, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802233,  22, True ) /* Inscribable */
     , (802233,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802233, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802233,   1, 'Heavy Handed (LR)') /* Name */
     , (802233,  16, 'This card can be used to cast Prodigal Heavy Weapons Mastery for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802233,   1,   33554809) /* Setup */
     , (802233,   3,  536870932) /* SoundTable */
     , (802233,   6,   67111919) /* PaletteBase */
     , (802233,   8,  100688622) /* Icon */
     , (802233,  22,  872415275) /* PhysicsEffectTable */
     , (802233,  28,       3740) /* Spell - Prodigal Two Handed Combat Mastery */;
