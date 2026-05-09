DELETE FROM `weenie` WHERE `class_Id` = 802958;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802958, 'AbilityCooldown3', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802958,   1,       2048) /* ItemType - Gem */
     , (802958,   3,         39) /* PaletteTemplate - Black */
     , (802958,   5,          5) /* EncumbranceVal */
     , (802958,   8,          5) /* Mass */
     , (802958,  11,         50) /* MaxStackSize */
     , (802958,  12,          1) /* StackSize */
     , (802958,  13,          5) /* StackUnitEncumbrance */
     , (802958,  14,          5) /* StackUnitMass */
     , (802958,  15,       5000) /* StackUnitValue */
     , (802958,  16,          8) /* ItemUseable - Contained */
     , (802958,  18,          0) /* UiEffects - Magical */
     , (802958,  19,       5000) /* Value */
     , (802958,  33,          1) /* Bonded - Bonded */
     , (802958,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802958,  94,         16) /* TargetType - Creature */
     , (802958, 106,        325) /* ItemSpellcraft */
     , (802958, 107,      10000) /* ItemCurMana */
     , (802958, 108,      10000) /* ItemMaxMana */
     , (802958, 114,          1) /* Attuned - Attuned */
     , (802958, 280,        559) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802958,  22, True ) /* Inscribable */
     , (802958,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802958,   1, 'Ability Cooldown') /* Name */
     , (802958,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802958, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802958,   1, 0x02000E59) /* Setup */
     , (802958,   3, 0x20000014) /* SoundTable */
     , (802958,   8,  100671788) /* Icon */
     , (802958,  22, 0x3400002B) /* PhysicsEffectTable */;

