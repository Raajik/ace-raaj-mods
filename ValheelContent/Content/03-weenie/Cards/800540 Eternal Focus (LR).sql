DELETE FROM `weenie` WHERE `class_Id` = 800540;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800540, 'Eternal Focus', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800540,   1,       2048) /* ItemType - Gem */
     , (800540,   3,         39) /* PaletteTemplate - Black */
     , (800540,   5,          5) /* EncumbranceVal */
     , (800540,   8,          5) /* Mass */
     , (800540,  11,          1) /* MaxStackSize */
     , (800540,  12,          1) /* StackSize */
     , (800540,  13,          5) /* StackUnitEncumbrance */
     , (800540,  14,          5) /* StackUnitMass */
     , (800540,  15,          100) /* StackUnitValue */
     , (800540,  16,          8) /* ItemUseable - Contained */
     , (800540,  18,         64) /* UiEffects - Lightning */
     , (800540,  19,          100) /* Value */
     , (800540,  33,          1) /* Bonded - Bonded */
     , (800540,  92,         -1) /* Structure */
     , (800540,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800540,  94,         16) /* TargetType - Creature */
     , (800540, 106,        325) /* ItemSpellcraft */
     , (800540, 107,      10000) /* ItemCurMana */
     , (800540, 108,      10000) /* ItemMaxMana */
     , (800540, 150,        103) /* HookPlacement - Hook */
     , (800540, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800540,  22, True ) /* Inscribable */
     , (800540,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800540, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800540,   1, 'Eternal Focus (LR)') /* Name */
     , (800540,  16, 'This card can be used to cast Prodigal Focus for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800540,   1,   33554809) /* Setup */
     , (800540,   3,  536870932) /* SoundTable */
     , (800540,   6,   67111919) /* PaletteBase */
     , (800540,   8,  100688622) /* Icon */
     , (800540,  22,  872415275) /* PhysicsEffectTable */
     , (800540,  28,       3705) /* Spell - Prodigal Focus */;
