DELETE FROM `weenie` WHERE `class_Id` = 802955;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802955, 'StealthCooldown', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802955,   1,       2048) /* ItemType - Gem */
     , (802955,   3,         39) /* PaletteTemplate - Black */
     , (802955,   5,          5) /* EncumbranceVal */
     , (802955,   8,          5) /* Mass */
     , (802955,  11,         50) /* MaxStackSize */
     , (802955,  12,          1) /* StackSize */
     , (802955,  13,          5) /* StackUnitEncumbrance */
     , (802955,  14,          5) /* StackUnitMass */
     , (802955,  15,       5000) /* StackUnitValue */
     , (802955,  16,          8) /* ItemUseable - Contained */
     , (802955,  18,          0) /* UiEffects - Magical */
     , (802955,  19,       5000) /* Value */
     , (802955,  33,          1) /* Bonded - Bonded */
     , (802955,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802955,  94,         16) /* TargetType - Creature */
     , (802955, 106,        325) /* ItemSpellcraft */
     , (802955, 107,      10000) /* ItemCurMana */
     , (802955, 108,      10000) /* ItemMaxMana */
     , (802955, 114,          1) /* Attuned - Attuned */
     , (802955, 280,        556) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802955,  22, True ) /* Inscribable */
     , (802955,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802955,   1, 'Stealth Cooldown') /* Name */
     , (802955,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802955, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802955,   1, 0x02000E59) /* Setup */
     , (802955,   3, 0x20000014) /* SoundTable */
     , (802955,   8,  100672010) /* Icon */
     , (802955,  22, 0x3400002B) /* PhysicsEffectTable */;

