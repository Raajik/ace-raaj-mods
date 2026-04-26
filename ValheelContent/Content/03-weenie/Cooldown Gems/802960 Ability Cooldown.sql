DELETE FROM `weenie` WHERE `class_Id` = 802960;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802960, 'AbilityCooldown5', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802960,   1,       2048) /* ItemType - Gem */
     , (802960,   3,         39) /* PaletteTemplate - Black */
     , (802960,   5,          5) /* EncumbranceVal */
     , (802960,   8,          5) /* Mass */
     , (802960,  11,         50) /* MaxStackSize */
     , (802960,  12,          1) /* StackSize */
     , (802960,  13,          5) /* StackUnitEncumbrance */
     , (802960,  14,          5) /* StackUnitMass */
     , (802960,  15,       5000) /* StackUnitValue */
     , (802960,  16,          8) /* ItemUseable - Contained */
     , (802960,  18,          0) /* UiEffects - Magical */
     , (802960,  19,       5000) /* Value */
     , (802960,  33,          1) /* Bonded - Bonded */
     , (802960,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802960,  94,         16) /* TargetType - Creature */
     , (802960, 106,        325) /* ItemSpellcraft */
     , (802960, 107,      10000) /* ItemCurMana */
     , (802960, 108,      10000) /* ItemMaxMana */
     , (802960, 114,          1) /* Attuned - Attuned */
     , (802960, 280,        561) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802960,  22, True ) /* Inscribable */
     , (802960,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802960,   1, 'Ability Cooldown') /* Name */
     , (802960,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802960, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802960,   1, 0x02000E59) /* Setup */
     , (802960,   3, 0x20000014) /* SoundTable */
     , (802960,   8,  100671788) /* Icon */
     , (802960,  22, 0x3400002B) /* PhysicsEffectTable */;

