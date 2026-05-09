DELETE FROM `weenie` WHERE `class_Id` = 802965;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802965, 'AbilityCooldown10', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802965,   1,       2048) /* ItemType - Gem */
     , (802965,   3,         39) /* PaletteTemplate - Black */
     , (802965,   5,          5) /* EncumbranceVal */
     , (802965,   8,          5) /* Mass */
     , (802965,  11,         50) /* MaxStackSize */
     , (802965,  12,          1) /* StackSize */
     , (802965,  13,          5) /* StackUnitEncumbrance */
     , (802965,  14,          5) /* StackUnitMass */
     , (802965,  15,       5000) /* StackUnitValue */
     , (802965,  16,          8) /* ItemUseable - Contained */
     , (802965,  18,          0) /* UiEffects - Magical */
     , (802965,  19,       5000) /* Value */
     , (802965,  33,          1) /* Bonded - Bonded */
     , (802965,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802965,  94,         16) /* TargetType - Creature */
     , (802965, 106,        325) /* ItemSpellcraft */
     , (802965, 107,      10000) /* ItemCurMana */
     , (802965, 108,      10000) /* ItemMaxMana */
     , (802965, 114,          1) /* Attuned - Attuned */
     , (802965, 280,        566) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802965,  22, True ) /* Inscribable */
     , (802965,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802965,   1, 'Ability Cooldown') /* Name */
     , (802965,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802965, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802965,   1, 0x02000E59) /* Setup */
     , (802965,   3, 0x20000014) /* SoundTable */
     , (802965,   8,  100671788) /* Icon */
     , (802965,  22, 0x3400002B) /* PhysicsEffectTable */;

