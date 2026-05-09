DELETE FROM `weenie` WHERE `class_Id` = 800539;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800539, 'Enduring Fortress', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800539,   1,       2048) /* ItemType - Gem */
     , (800539,   3,         39) /* PaletteTemplate - Black */
     , (800539,   5,          5) /* EncumbranceVal */
     , (800539,   8,          5) /* Mass */
     , (800539,  11,          1) /* MaxStackSize */
     , (800539,  12,          1) /* StackSize */
     , (800539,  13,          5) /* StackUnitEncumbrance */
     , (800539,  14,          5) /* StackUnitMass */
     , (800539,  15,        100) /* StackUnitValue */
     , (800539,  16,          8) /* ItemUseable - Contained */
     , (800539,  18,         64) /* UiEffects - Lightning */
     , (800539,  19,        100) /* Value */
     , (800539,  33,          1) /* Bonded - Bonded */
     , (800539,  92,         -1) /* Structure */
     , (800539,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800539,  94,         16) /* TargetType - Creature */
     , (800539, 106,        325) /* ItemSpellcraft */
     , (800539, 107,      10000) /* ItemCurMana */
     , (800539, 108,      10000) /* ItemMaxMana */
     , (800539, 150,        103) /* HookPlacement - Hook */
     , (800539, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800539,  22, True ) /* Inscribable */
     , (800539,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800539, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800539,   1, 'Enduring Fortress (LR)') /* Name */
     , (800539,  16, 'This card can be used to cast Prodigal Endurance for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800539,   1,   33554809) /* Setup */
     , (800539,   3,  536870932) /* SoundTable */
     , (800539,   6,   67111919) /* PaletteBase */
     , (800539,   8,  100688622) /* Icon */
     , (800539,  22,  872415275) /* PhysicsEffectTable */
     , (800539,  28,       3700) /* Spell - Prodigal Endurance */;
