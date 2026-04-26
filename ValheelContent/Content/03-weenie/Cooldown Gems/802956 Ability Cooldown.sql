DELETE FROM `weenie` WHERE `class_Id` = 802956;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802956, 'AbilityCooldown1', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802956,   1,       2048) /* ItemType - Gem */
     , (802956,   3,         39) /* PaletteTemplate - Black */
     , (802956,   5,          5) /* EncumbranceVal */
     , (802956,   8,          5) /* Mass */
     , (802956,  11,         50) /* MaxStackSize */
     , (802956,  12,          1) /* StackSize */
     , (802956,  13,          5) /* StackUnitEncumbrance */
     , (802956,  14,          5) /* StackUnitMass */
     , (802956,  15,       5000) /* StackUnitValue */
     , (802956,  16,          8) /* ItemUseable - Contained */
     , (802956,  18,          0) /* UiEffects - Magical */
     , (802956,  19,       5000) /* Value */
     , (802956,  33,          1) /* Bonded - Bonded */
     , (802956,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802956,  94,         16) /* TargetType - Creature */
     , (802956, 106,        325) /* ItemSpellcraft */
     , (802956, 107,      10000) /* ItemCurMana */
     , (802956, 108,      10000) /* ItemMaxMana */
     , (802956, 114,          1) /* Attuned - Attuned */
     , (802956, 280,        557) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802956,  22, True ) /* Inscribable */
     , (802956,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802956,   1, 'Ability Cooldown') /* Name */
     , (802956,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802956, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802956,   1, 0x02000E59) /* Setup */
     , (802956,   3, 0x20000014) /* SoundTable */
     , (802956,   8,  100671788) /* Icon */
     , (802956,  22, 0x3400002B) /* PhysicsEffectTable */;

