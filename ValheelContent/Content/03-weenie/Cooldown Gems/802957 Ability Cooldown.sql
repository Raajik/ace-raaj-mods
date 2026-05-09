DELETE FROM `weenie` WHERE `class_Id` = 802957;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802957, 'AbilityCooldown2', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802957,   1,       2048) /* ItemType - Gem */
     , (802957,   3,         39) /* PaletteTemplate - Black */
     , (802957,   5,          5) /* EncumbranceVal */
     , (802957,   8,          5) /* Mass */
     , (802957,  11,         50) /* MaxStackSize */
     , (802957,  12,          1) /* StackSize */
     , (802957,  13,          5) /* StackUnitEncumbrance */
     , (802957,  14,          5) /* StackUnitMass */
     , (802957,  15,       5000) /* StackUnitValue */
     , (802957,  16,          8) /* ItemUseable - Contained */
     , (802957,  18,          0) /* UiEffects - Magical */
     , (802957,  19,       5000) /* Value */
     , (802957,  33,          1) /* Bonded - Bonded */
     , (802957,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802957,  94,         16) /* TargetType - Creature */
     , (802957, 106,        325) /* ItemSpellcraft */
     , (802957, 107,      10000) /* ItemCurMana */
     , (802957, 108,      10000) /* ItemMaxMana */
     , (802957, 114,          1) /* Attuned - Attuned */
     , (802957, 280,        558) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802957,  22, True ) /* Inscribable */
     , (802957,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802957,   1, 'Ability Cooldown') /* Name */
     , (802957,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802957, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802957,   1, 0x02000E59) /* Setup */
     , (802957,   3, 0x20000014) /* SoundTable */
     , (802957,   8,  100671788) /* Icon */
     , (802957,  22, 0x3400002B) /* PhysicsEffectTable */;

