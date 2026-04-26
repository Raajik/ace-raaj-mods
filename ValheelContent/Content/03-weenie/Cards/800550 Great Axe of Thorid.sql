DELETE FROM `weenie` WHERE `class_Id` = 800550;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800550, 'Great Axe of Thorid', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800550,   1,       2048) /* ItemType - Gem */
     , (800550,   3,         39) /* PaletteTemplate - Black */
     , (800550,   5,          5) /* EncumbranceVal */
     , (800550,   8,          5) /* Mass */
     , (800550,  11,          1) /* MaxStackSize */
     , (800550,  12,          1) /* StackSize */
     , (800550,  13,          5) /* StackUnitEncumbrance */
     , (800550,  14,          5) /* StackUnitMass */
     , (800550,  15,          100) /* StackUnitValue */
     , (800550,  16,          8) /* ItemUseable - Contained */
     , (800550,  17,        113) /* RareId */
     , (800550,  18,        128) /* UiEffects - Frost */
     , (800550,  19,          100) /* Value */
     , (800550,  33,          1) /* Bonded - Bonded */
     , (800550,  92,         -1) /* Structure */
     , (800550,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800550,  94,         16) /* TargetType - Creature */
     , (800550, 106,        325) /* ItemSpellcraft */
     , (800550, 107,      10000) /* ItemCurMana */
     , (800550, 108,      10000) /* ItemMaxMana */
     , (800550, 109,          0) /* ItemDifficulty */
     , (800550, 150,        103) /* HookPlacement - Hook */
     , (800550, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800550,  22, True ) /* Inscribable */
     , (800550,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800550, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800550,   1, 'Great Axe of Thorid') /* Name */
     , (800550,  16, 'This card can be used to cast Prodigal Heavy Weapons Mastery for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800550,   1,   33554809) /* Setup */
     , (800550,   3,  536870932) /* SoundTable */
     , (800550,   6,   67111919) /* PaletteBase */
     , (800550,   8,  100688622) /* Icon */
     , (800550,  22,  872415275) /* PhysicsEffectTable */
     , (800550,  28,       3740) /* Spell - Prodigal Heavy Weapon Mastery */;
