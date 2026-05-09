DELETE FROM `weenie` WHERE `class_Id` = 801922;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801922, 'DispelPaper', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801922,   1,       2048) /* ItemType - Gem */
     , (801922,   3,         39) /* PaletteTemplate - Black */
     , (801922,   5,          5) /* EncumbranceVal */
     , (801922,   8,          5) /* Mass */
     , (801922,  11,          1) /* MaxStackSize */
     , (801922,  12,          1) /* StackSize */
     , (801922,  13,          5) /* StackUnitEncumbrance */
     , (801922,  14,          5) /* StackUnitMass */
     , (801922,  15,        100) /* StackUnitValue */
     , (801922,  16,          8) /* ItemUseable - Contained */
     , (801922,  18,         64) /* UiEffects - Lightning */
     , (801922,  19,        100) /* Value */
     , (801922,  33,          1) /* Bonded - Bonded */
     , (801922,  92,         -1) /* Structure */
     , (801922,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801922,  94,         16) /* TargetType - Creature */
     , (801922, 106,        325) /* ItemSpellcraft */
     , (801922, 107,      10000) /* ItemCurMana */
     , (801922, 108,      10000) /* ItemMaxMana */
     , (801922, 150,        103) /* HookPlacement - Hook */
     , (801922, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801922,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801922, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801922,   1, 'Dispel Paper') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801922,   1,   33554809) /* Setup */
     , (801922,   3,  536870932) /* SoundTable */
     , (801922,   6,   67111919) /* PaletteBase */
     , (801922,   8,  100688622) /* Icon */
     , (801922,  22,  872415275) /* PhysicsEffectTable */
     , (801922,  28,       4333) /* Spell - Prodigal Endurance */;
