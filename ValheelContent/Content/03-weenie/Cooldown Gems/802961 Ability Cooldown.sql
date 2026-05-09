DELETE FROM `weenie` WHERE `class_Id` = 802961;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802961, 'AbilityCooldown6', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802961,   1,       2048) /* ItemType - Gem */
     , (802961,   3,         39) /* PaletteTemplate - Black */
     , (802961,   5,          5) /* EncumbranceVal */
     , (802961,   8,          5) /* Mass */
     , (802961,  11,         50) /* MaxStackSize */
     , (802961,  12,          1) /* StackSize */
     , (802961,  13,          5) /* StackUnitEncumbrance */
     , (802961,  14,          5) /* StackUnitMass */
     , (802961,  15,       5000) /* StackUnitValue */
     , (802961,  16,          8) /* ItemUseable - Contained */
     , (802961,  18,          0) /* UiEffects - Magical */
     , (802961,  19,       5000) /* Value */
     , (802961,  33,          1) /* Bonded - Bonded */
     , (802961,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802961,  94,         16) /* TargetType - Creature */
     , (802961, 106,        325) /* ItemSpellcraft */
     , (802961, 107,      10000) /* ItemCurMana */
     , (802961, 108,      10000) /* ItemMaxMana */
     , (802961, 114,          1) /* Attuned - Attuned */
     , (802961, 280,        562) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802961,  22, True ) /* Inscribable */
     , (802961,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802961,   1, 'Ability Cooldown') /* Name */
     , (802961,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802961, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802961,   1, 0x02000E59) /* Setup */
     , (802961,   3, 0x20000014) /* SoundTable */
     , (802961,   8,  100671788) /* Icon */
     , (802961,  22, 0x3400002B) /* PhysicsEffectTable */;

