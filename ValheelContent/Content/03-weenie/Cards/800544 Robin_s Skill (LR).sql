DELETE FROM `weenie` WHERE `class_Id` = 800544;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800544, 'Robin''s Skill', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800544,   1,       2048) /* ItemType - Gem */
     , (800544,   3,         39) /* PaletteTemplate - Black */
     , (800544,   5,          5) /* EncumbranceVal */
     , (800544,   8,          5) /* Mass */
     , (800544,  11,          1) /* MaxStackSize */
     , (800544,  12,          1) /* StackSize */
     , (800544,  13,          5) /* StackUnitEncumbrance */
     , (800544,  14,          5) /* StackUnitMass */
     , (800544,  15,          100) /* StackUnitValue */
     , (800544,  16,          8) /* ItemUseable - Contained */
     , (800544,  18,         64) /* UiEffects - Lightning */
     , (800544,  19,          100) /* Value */
     , (800544,  33,          1) /* Bonded - Bonded */
     , (800544,  92,         -1) /* Structure */
     , (800544,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800544,  94,         16) /* TargetType - Creature */
     , (800544, 106,        325) /* ItemSpellcraft */
     , (800544, 107,      10000) /* ItemCurMana */
     , (800544, 108,      10000) /* ItemMaxMana */
     , (800544, 150,        103) /* HookPlacement - Hook */
     , (800544, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800544,  22, True ) /* Inscribable */
     , (800544,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800544, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800544,   1, 'Robin''s Skill (LR)') /* Name */
     , (800544,  16, 'This card can be used to cast Prodigal Coordination for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800544,   1,   33554809) /* Setup */
     , (800544,   3,  536870932) /* SoundTable */
     , (800544,   6,   67111919) /* PaletteBase */
     , (800544,   8,  100688622) /* Icon */
     , (800544,  22,  872415275) /* PhysicsEffectTable */
     , (800544,  28,       3694) /* Spell - Prodigal Coordination */;
