DELETE FROM `weenie` WHERE `class_Id` = 802962;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802962, 'AbilityCooldown7', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802962,   1,       2048) /* ItemType - Gem */
     , (802962,   3,         39) /* PaletteTemplate - Black */
     , (802962,   5,          5) /* EncumbranceVal */
     , (802962,   8,          5) /* Mass */
     , (802962,  11,         50) /* MaxStackSize */
     , (802962,  12,          1) /* StackSize */
     , (802962,  13,          5) /* StackUnitEncumbrance */
     , (802962,  14,          5) /* StackUnitMass */
     , (802962,  15,       5000) /* StackUnitValue */
     , (802962,  16,          8) /* ItemUseable - Contained */
     , (802962,  18,          0) /* UiEffects - Magical */
     , (802962,  19,       5000) /* Value */
     , (802962,  33,          1) /* Bonded - Bonded */
     , (802962,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802962,  94,         16) /* TargetType - Creature */
     , (802962, 106,        325) /* ItemSpellcraft */
     , (802962, 107,      10000) /* ItemCurMana */
     , (802962, 108,      10000) /* ItemMaxMana */
     , (802962, 114,          1) /* Attuned - Attuned */
     , (802962, 280,        563) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802962,  22, True ) /* Inscribable */
     , (802962,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802962,   1, 'Ability Cooldown') /* Name */
     , (802962,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802962, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802962,   1, 0x02000E59) /* Setup */
     , (802962,   3, 0x20000014) /* SoundTable */
     , (802962,   8,  100671788) /* Icon */
     , (802962,  22, 0x3400002B) /* PhysicsEffectTable */;

