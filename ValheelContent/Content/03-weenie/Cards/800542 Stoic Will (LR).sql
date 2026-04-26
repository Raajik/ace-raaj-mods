DELETE FROM `weenie` WHERE `class_Id` = 800542;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800542, 'Stoic Will', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800542,   1,       2048) /* ItemType - Gem */
     , (800542,   3,         39) /* PaletteTemplate - Black */
     , (800542,   5,          5) /* EncumbranceVal */
     , (800542,   8,          5) /* Mass */
     , (800542,  11,          1) /* MaxStackSize */
     , (800542,  12,          1) /* StackSize */
     , (800542,  13,          5) /* StackUnitEncumbrance */
     , (800542,  14,          5) /* StackUnitMass */
     , (800542,  15,          100) /* StackUnitValue */
     , (800542,  16,          8) /* ItemUseable - Contained */
     , (800542,  18,         64) /* UiEffects - Lightning */
     , (800542,  19,          100) /* Value */
     , (800542,  33,          1) /* Bonded - Bonded */
     , (800542,  92,         -1) /* Structure */
     , (800542,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800542,  94,         16) /* TargetType - Creature */
     , (800542, 106,        325) /* ItemSpellcraft */
     , (800542, 107,      10000) /* ItemCurMana */
     , (800542, 108,      10000) /* ItemMaxMana */
     , (800542, 150,        103) /* HookPlacement - Hook */
     , (800542, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800542,  22, True ) /* Inscribable */
     , (800542,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800542, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800542,   1, 'Stoic Will (LR)') /* Name */
     , (800542,  16, 'This card can be used to cast Prodigal Willpower for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800542,   1,   33554809) /* Setup */
     , (800542,   3,  536870932) /* SoundTable */
     , (800542,   6,   67111919) /* PaletteBase */
     , (800542,   8,  100688622) /* Icon */
     , (800542,  22,  872415275) /* PhysicsEffectTable */
     , (800542,  28,       3733) /* Spell - Prodigal Willpower */;
