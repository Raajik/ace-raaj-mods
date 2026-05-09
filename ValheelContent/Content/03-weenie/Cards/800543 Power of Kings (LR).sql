DELETE FROM `weenie` WHERE `class_Id` = 800543;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800543, 'Power of Kings', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800543,   1,       2048) /* ItemType - Gem */
     , (800543,   3,         39) /* PaletteTemplate - Black */
     , (800543,   5,          5) /* EncumbranceVal */
     , (800543,   8,          5) /* Mass */
     , (800543,  11,          1) /* MaxStackSize */
     , (800543,  12,          1) /* StackSize */
     , (800543,  13,          5) /* StackUnitEncumbrance */
     , (800543,  14,          5) /* StackUnitMass */
     , (800543,  15,          100) /* StackUnitValue */
     , (800543,  16,          8) /* ItemUseable - Contained */
     , (800543,  18,         64) /* UiEffects - Lightning */
     , (800543,  19,          100) /* Value */
     , (800543,  33,          1) /* Bonded - Bonded */
     , (800543,  92,         -1) /* Structure */
     , (800543,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800543,  94,         16) /* TargetType - Creature */
     , (800543, 106,        325) /* ItemSpellcraft */
     , (800543, 107,      10000) /* ItemCurMana */
     , (800543, 108,      10000) /* ItemMaxMana */
     , (800543, 150,        103) /* HookPlacement - Hook */
     , (800543, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800543,  22, True ) /* Inscribable */
     , (800543,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800543, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800543,   1, 'Power of Kings (LR)') /* Name */
     , (800543,  16, 'This card can be used to cast Prodigal Strength for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800543,   1,   33554809) /* Setup */
     , (800543,   3,  536870932) /* SoundTable */
     , (800543,   6,   67111919) /* PaletteBase */
     , (800543,   8,  100688622) /* Icon */
     , (800543,  22,  872415275) /* PhysicsEffectTable */
     , (800543,  28,       3738) /* Spell - Prodigal Strength */;
