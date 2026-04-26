DELETE FROM `weenie` WHERE `class_Id` = 800547;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800547, 'Holo-Shield of Fortitude', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800547,   1,       2048) /* ItemType - Gem */
     , (800547,   3,         39) /* PaletteTemplate - Black */
     , (800547,   5,          5) /* EncumbranceVal */
     , (800547,   8,          5) /* Mass */
     , (800547,  11,          1) /* MaxStackSize */
     , (800547,  12,          1) /* StackSize */
     , (800547,  13,          5) /* StackUnitEncumbrance */
     , (800547,  14,          5) /* StackUnitMass */
     , (800547,  15,          100) /* StackUnitValue */
     , (800547,  16,          8) /* ItemUseable - Contained */
     , (800547,  17,        106) /* RareId */
     , (800547,  18,        128) /* UiEffects - Frost */
     , (800547,  19,          100) /* Value */
     , (800547,  33,          1) /* Bonded - Bonded */
     , (800547,  92,         -1) /* Structure */
     , (800547,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800547,  94,         16) /* TargetType - Creature */
     , (800547, 106,        325) /* ItemSpellcraft */
     , (800547, 107,      10000) /* ItemCurMana */
     , (800547, 108,      10000) /* ItemMaxMana */
     , (800547, 109,          0) /* ItemDifficulty */
     , (800547, 150,        103) /* HookPlacement - Hook */
     , (800547, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800547,  22, True ) /* Inscribable */
     , (800547,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800547, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800547,   1, 'Holo-Shield of Fortitude (LR)') /* Name */
     , (800547,  16, 'This card can be used to cast Prodigal Magic Resistence for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800547,   1,   33554809) /* Setup */
     , (800547,   3,  536870932) /* SoundTable */
     , (800547,   6,   67111919) /* PaletteBase */
     , (800547,   8,  100688622) /* Icon */
     , (800547,  22,  872415275) /* PhysicsEffectTable */
     , (800547,  28,       3723) /* Spell - Prodigal Magic Resistance */;
