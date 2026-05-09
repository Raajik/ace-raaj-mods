DELETE FROM `weenie` WHERE `class_Id` = 800541;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800541, 'Lucky Rabbit''s Foot', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800541,   1,       2048) /* ItemType - Gem */
     , (800541,   3,         39) /* PaletteTemplate - Black */
     , (800541,   5,          5) /* EncumbranceVal */
     , (800541,   8,          5) /* Mass */
     , (800541,  11,          1) /* MaxStackSize */
     , (800541,  12,          1) /* StackSize */
     , (800541,  13,          5) /* StackUnitEncumbrance */
     , (800541,  14,          5) /* StackUnitMass */
     , (800541,  15,          100) /* StackUnitValue */
     , (800541,  16,          8) /* ItemUseable - Contained */
     , (800541,  18,         64) /* UiEffects - Lightning */
     , (800541,  19,          100) /* Value */
     , (800541,  33,          1) /* Bonded - Bonded */
     , (800541,  92,         -1) /* Structure */
     , (800541,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800541,  94,         16) /* TargetType - Creature */
     , (800541, 106,        325) /* ItemSpellcraft */
     , (800541, 107,      10000) /* ItemCurMana */
     , (800541, 108,      10000) /* ItemMaxMana */
     , (800541, 150,        103) /* HookPlacement - Hook */
     , (800541, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800541,  22, True ) /* Inscribable */
     , (800541,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800541, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800541,   1, 'Lucky Rabbit''s Foot (LR)') /* Name */
     , (800541,  16, 'This card can be used to cast Prodigal Quickness for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800541,   1,   33554809) /* Setup */
     , (800541,   3,  536870932) /* SoundTable */
     , (800541,   6,   67111919) /* PaletteBase */
     , (800541,   8,  100688622) /* Icon */
     , (800541,  22,  872415275) /* PhysicsEffectTable */
     , (800541,  28,       3730) /* Spell - Prodigal Quickness */;
