DELETE FROM `weenie` WHERE `class_Id` = 802959;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802959, 'AbilityCooldown4', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802959,   1,       2048) /* ItemType - Gem */
     , (802959,   3,         39) /* PaletteTemplate - Black */
     , (802959,   5,          5) /* EncumbranceVal */
     , (802959,   8,          5) /* Mass */
     , (802959,  11,         50) /* MaxStackSize */
     , (802959,  12,          1) /* StackSize */
     , (802959,  13,          5) /* StackUnitEncumbrance */
     , (802959,  14,          5) /* StackUnitMass */
     , (802959,  15,       5000) /* StackUnitValue */
     , (802959,  16,          8) /* ItemUseable - Contained */
     , (802959,  18,          0) /* UiEffects - Magical */
     , (802959,  19,       5000) /* Value */
     , (802959,  33,          1) /* Bonded - Bonded */
     , (802959,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802959,  94,         16) /* TargetType - Creature */
     , (802959, 106,        325) /* ItemSpellcraft */
     , (802959, 107,      10000) /* ItemCurMana */
     , (802959, 108,      10000) /* ItemMaxMana */
     , (802959, 114,          1) /* Attuned - Attuned */
     , (802959, 280,        560) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802959,  22, True ) /* Inscribable */
     , (802959,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802959,   1, 'Ability Cooldown') /* Name */
     , (802959,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802959, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802959,   1, 0x02000E59) /* Setup */
     , (802959,   3, 0x20000014) /* SoundTable */
     , (802959,   8,  100671788) /* Icon */
     , (802959,  22, 0x3400002B) /* PhysicsEffectTable */;

