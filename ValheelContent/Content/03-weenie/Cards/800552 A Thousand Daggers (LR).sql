DELETE FROM `weenie` WHERE `class_Id` = 800552;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800552, 'A Thousand Daggers', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800552,   1,       2048) /* ItemType - Gem */
     , (800552,   3,         39) /* PaletteTemplate - Black */
     , (800552,   5,          5) /* EncumbranceVal */
     , (800552,   8,          5) /* Mass */
     , (800552,  11,          1) /* MaxStackSize */
     , (800552,  12,          1) /* StackSize */
     , (800552,  13,          5) /* StackUnitEncumbrance */
     , (800552,  14,          5) /* StackUnitMass */
     , (800552,  15,          100) /* StackUnitValue */
     , (800552,  16,          8) /* ItemUseable - Contained */
     , (800552,  17,         88) /* RareId */
     , (800552,  18,        128) /* UiEffects - Frost */
     , (800552,  19,          100) /* Value */
     , (800552,  33,          1) /* Bonded - Bonded */
     , (800552,  92,         -1) /* Structure */
     , (800552,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800552,  94,         16) /* TargetType - Creature */
     , (800552, 106,        325) /* ItemSpellcraft */
     , (800552, 107,      10000) /* ItemCurMana */
     , (800552, 108,      10000) /* ItemMaxMana */
     , (800552, 109,          0) /* ItemDifficulty */
     , (800552, 150,        103) /* HookPlacement - Hook */
     , (800552, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800552,  22, True ) /* Inscribable */
     , (800552,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800552, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800552,   1, 'A Thousand Daggers (LR)') /* Name */
     , (800552,  16, 'This card can be used to cast Prodigal Light Weapons Mastery for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800552,   1,   33554809) /* Setup */
     , (800552,   3,  536870932) /* SoundTable */
     , (800552,   6,   67111919) /* PaletteBase */
     , (800552,   8,  100688622) /* Icon */
     , (800552,  22,  872415275) /* PhysicsEffectTable */
     , (800552,  28,       3685) /* Spell - Prodigal Light Weapon Mastery */;
