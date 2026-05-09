DELETE FROM `weenie` WHERE `class_Id` = 802943;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802943, 'BastionCooldown', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802943,   1,       2048) /* ItemType - Gem */
     , (802943,   3,         39) /* PaletteTemplate - Black */
     , (802943,   5,          5) /* EncumbranceVal */
     , (802943,   8,          5) /* Mass */
     , (802943,  11,         50) /* MaxStackSize */
     , (802943,  12,          1) /* StackSize */
     , (802943,  13,          5) /* StackUnitEncumbrance */
     , (802943,  14,          5) /* StackUnitMass */
     , (802943,  15,       5000) /* StackUnitValue */
     , (802943,  16,          8) /* ItemUseable - Contained */
     , (802943,  18,          0) /* UiEffects - Magical */
     , (802943,  19,       5000) /* Value */
     , (802943,  33,          1) /* Bonded - Bonded */
     , (802943,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802943,  94,         16) /* TargetType - Creature */
     , (802943, 106,        325) /* ItemSpellcraft */
     , (802943, 107,      10000) /* ItemCurMana */
     , (802943, 108,      10000) /* ItemMaxMana */
     , (802943, 114,          1) /* Attuned - Attuned */
     , (802943, 280,        554) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802943,  22, True ) /* Inscribable */
     , (802943,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802943,   1, 'Bastion Cooldown') /* Name */
     , (802943,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802943, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802943,   1, 0x02000E59) /* Setup */
     , (802943,   3, 0x20000014) /* SoundTable */
     , (802943,   8,  100672008) /* Icon */
     , (802943,  22, 0x3400002B) /* PhysicsEffectTable */;

