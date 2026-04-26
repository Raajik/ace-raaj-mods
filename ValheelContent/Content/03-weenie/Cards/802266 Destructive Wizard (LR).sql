DELETE FROM `weenie` WHERE `class_Id` = 802266;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802266, 'Destructive Wizard LR', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802266,   1,       2048) /* ItemType - Gem */
     , (802266,   3,         39) /* PaletteTemplate - Black */
     , (802266,   5,          5) /* EncumbranceVal */
     , (802266,   8,          5) /* Mass */
     , (802266,  11,          1) /* MaxStackSize */
     , (802266,  12,          1) /* StackSize */
     , (802266,  13,          5) /* StackUnitEncumbrance */
     , (802266,  14,          5) /* StackUnitMass */
     , (802266,  15,        100) /* StackUnitValue */
     , (802266,  16,          8) /* ItemUseable - Contained */
     , (802266,  17,         83) /* RareId */
     , (802266,  18,        128) /* UiEffects - Frost */
     , (802266,  19,        100) /* Value */
     , (802266,  33,          1) /* Bonded - Bonded */
     , (802266,  92,         -1) /* Structure */
     , (802266,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802266,  94,         16) /* TargetType - Creature */
     , (802266, 106,        325) /* ItemSpellcraft */
     , (802266, 107,      10000) /* ItemCurMana */
     , (802266, 108,      10000) /* ItemMaxMana */
     , (802266, 150,        103) /* HookPlacement - Hook */
     , (802266, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802266,  22, True ) /* Inscribable */
     , (802266,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802266, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802266,   1, 'Destructive Wizard (LR)') /* Name */
     , (802266,  16, 'This card can be used to cast Prodigal War Mastery for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802266,   1,   33554809) /* Setup */
     , (802266,   3,  536870932) /* SoundTable */
     , (802266,   6,   67111919) /* PaletteBase */
     , (802266,   8,  100688622) /* Icon */
     , (802266,  22,  872415275) /* PhysicsEffectTable */
     , (802266,  28,       3743) /* Spell - Prodigal Two Handed Combat Mastery */;
