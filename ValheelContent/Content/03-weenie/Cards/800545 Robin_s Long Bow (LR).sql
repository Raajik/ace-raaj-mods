DELETE FROM `weenie` WHERE `class_Id` = 800545;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800545, 'Robin''s Long Bow', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800545,   1,       2048) /* ItemType - Gem */
     , (800545,   3,         39) /* PaletteTemplate - Black */
     , (800545,   5,          5) /* EncumbranceVal */
     , (800545,   8,          5) /* Mass */
     , (800545,  11,          1) /* MaxStackSize */
     , (800545,  12,          1) /* StackSize */
     , (800545,  13,          5) /* StackUnitEncumbrance */
     , (800545,  14,          5) /* StackUnitMass */
     , (800545,  15,          100) /* StackUnitValue */
     , (800545,  16,          8) /* ItemUseable - Contained */
     , (800545,  17,         89) /* RareId */
     , (800545,  18,        128) /* UiEffects - Frost */
     , (800545,  19,          100) /* Value */
     , (800545,  33,          1) /* Bonded - Bonded */
     , (800545,  92,         -1) /* Structure */
     , (800545,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800545,  94,         16) /* TargetType - Creature */
     , (800545, 106,        325) /* ItemSpellcraft */
     , (800545, 107,      10000) /* ItemCurMana */
     , (800545, 108,      10000) /* ItemMaxMana */
     , (800545, 109,          0) /* ItemDifficulty */
     , (800545, 150,        103) /* HookPlacement - Hook */
     , (800545, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800545,  22, True ) /* Inscribable */
     , (800545,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800545, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800545,   1, 'Robin''s Long Bow (LR)') /* Name */
     , (800545,  16, 'This card can be used to cast Prodigal Missile Weapon Mastery for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800545,   1,   33554809) /* Setup */
     , (800545,   3,  536870932) /* SoundTable */
     , (800545,   6,   67111919) /* PaletteBase */
     , (800545,   8,  100688622) /* Icon */
     , (800545,  22,  872415275) /* PhysicsEffectTable */
     , (800545,  28,       3691) /* Spell - Prodigal Missile Weapon Mastery */;
