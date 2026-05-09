DELETE FROM `weenie` WHERE `class_Id` = 800546;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800546, 'One Inch Punch', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800546,   1,       2048) /* ItemType - Gem */
     , (800546,   3,         39) /* PaletteTemplate - Black */
     , (800546,   5,          5) /* EncumbranceVal */
     , (800546,   8,          5) /* Mass */
     , (800546,  11,          1) /* MaxStackSize */
     , (800546,  12,          1) /* StackSize */
     , (800546,  13,          5) /* StackUnitEncumbrance */
     , (800546,  14,          5) /* StackUnitMass */
     , (800546,  15,          100) /* StackUnitValue */
     , (800546,  16,          8) /* ItemUseable - Contained */
     , (800546,  17,         93) /* RareId */
     , (800546,  18,        128) /* UiEffects - Frost */
     , (800546,  19,          100) /* Value */
     , (800546,  33,          1) /* Bonded - Bonded */
     , (800546,  92,         -1) /* Structure */
     , (800546,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800546,  94,         16) /* TargetType - Creature */
     , (800546, 106,        325) /* ItemSpellcraft */
     , (800546, 107,      10000) /* ItemCurMana */
     , (800546, 108,      10000) /* ItemMaxMana */
     , (800546, 109,          0) /* ItemDifficulty */
     , (800546, 150,        103) /* HookPlacement - Hook */
     , (800546, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800546,  22, True ) /* Inscribable */
     , (800546,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800546, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800546,   1, 'One Inch Punch (LR)') /* Name */
     , (800546,  16, 'This card can be used to cast Prodigal Finesse Weapon Mastery for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800546,   1,   33554809) /* Setup */
     , (800546,   3,  536870932) /* SoundTable */
     , (800546,   6,   67111919) /* PaletteBase */
     , (800546,   8,  100688622) /* Icon */
     , (800546,  22,  872415275) /* PhysicsEffectTable */
     , (800546,  28,       3697) /* Spell - Prodigal Finesse Weapon Mastery */;
