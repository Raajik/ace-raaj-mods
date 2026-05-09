DELETE FROM `weenie` WHERE `class_Id` = 802964;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802964, 'AbilityCooldown9', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802964,   1,       2048) /* ItemType - Gem */
     , (802964,   3,         39) /* PaletteTemplate - Black */
     , (802964,   5,          5) /* EncumbranceVal */
     , (802964,   8,          5) /* Mass */
     , (802964,  11,         50) /* MaxStackSize */
     , (802964,  12,          1) /* StackSize */
     , (802964,  13,          5) /* StackUnitEncumbrance */
     , (802964,  14,          5) /* StackUnitMass */
     , (802964,  15,       5000) /* StackUnitValue */
     , (802964,  16,          8) /* ItemUseable - Contained */
     , (802964,  18,          0) /* UiEffects - Magical */
     , (802964,  19,       5000) /* Value */
     , (802964,  33,          1) /* Bonded - Bonded */
     , (802964,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802964,  94,         16) /* TargetType - Creature */
     , (802964, 106,        325) /* ItemSpellcraft */
     , (802964, 107,      10000) /* ItemCurMana */
     , (802964, 108,      10000) /* ItemMaxMana */
     , (802964, 114,          1) /* Attuned - Attuned */
     , (802964, 280,        565) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802964,  22, True ) /* Inscribable */
     , (802964,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802964,   1, 'Ability Cooldown') /* Name */
     , (802964,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802964, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802964,   1, 0x02000E59) /* Setup */
     , (802964,   3, 0x20000014) /* SoundTable */
     , (802964,   8,  100671788) /* Icon */
     , (802964,  22, 0x3400002B) /* PhysicsEffectTable */;

