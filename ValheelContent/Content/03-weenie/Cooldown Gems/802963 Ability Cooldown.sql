DELETE FROM `weenie` WHERE `class_Id` = 802963;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802963, 'AbilityCooldown8', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802963,   1,       2048) /* ItemType - Gem */
     , (802963,   3,         39) /* PaletteTemplate - Black */
     , (802963,   5,          5) /* EncumbranceVal */
     , (802963,   8,          5) /* Mass */
     , (802963,  11,         50) /* MaxStackSize */
     , (802963,  12,          1) /* StackSize */
     , (802963,  13,          5) /* StackUnitEncumbrance */
     , (802963,  14,          5) /* StackUnitMass */
     , (802963,  15,       5000) /* StackUnitValue */
     , (802963,  16,          8) /* ItemUseable - Contained */
     , (802963,  18,          0) /* UiEffects - Magical */
     , (802963,  19,       5000) /* Value */
     , (802963,  33,          1) /* Bonded - Bonded */
     , (802963,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802963,  94,         16) /* TargetType - Creature */
     , (802963, 106,        325) /* ItemSpellcraft */
     , (802963, 107,      10000) /* ItemCurMana */
     , (802963, 108,      10000) /* ItemMaxMana */
     , (802963, 114,          1) /* Attuned - Attuned */
     , (802963, 280,        564) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802963,  22, True ) /* Inscribable */
     , (802963,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802963,   1, 'Ability Cooldown') /* Name */
     , (802963,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802963, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802963,   1, 0x02000E59) /* Setup */
     , (802963,   3, 0x20000014) /* SoundTable */
     , (802963,   8,  100671788) /* Icon */
     , (802963,  22, 0x3400002B) /* PhysicsEffectTable */;

