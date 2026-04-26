DELETE FROM `weenie` WHERE `class_Id` = 802941;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802941, 'PowerAttackCooldown', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802941,   1,       2048) /* ItemType - Gem */
     , (802941,   3,         39) /* PaletteTemplate - Black */
     , (802941,   5,          5) /* EncumbranceVal */
     , (802941,   8,          5) /* Mass */
     , (802941,  11,         50) /* MaxStackSize */
     , (802941,  12,          1) /* StackSize */
     , (802941,  13,          5) /* StackUnitEncumbrance */
     , (802941,  14,          5) /* StackUnitMass */
     , (802941,  15,       5000) /* StackUnitValue */
     , (802941,  16,          8) /* ItemUseable - Contained */
     , (802941,  18,          0) /* UiEffects - Magical */
     , (802941,  19,       5000) /* Value */
     , (802941,  33,          1) /* Bonded - Bonded */
     , (802941,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802941,  94,         16) /* TargetType - Creature */
     , (802941, 106,        325) /* ItemSpellcraft */
     , (802941, 107,      10000) /* ItemCurMana */
     , (802941, 108,      10000) /* ItemMaxMana */
     , (802941, 114,          1) /* Attuned - Attuned */
     , (802941, 280,        551) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802941,  22, True ) /* Inscribable */
     , (802941,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802941,   1, 'Power Attack Cooldown') /* Name */
     , (802941,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802941, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802941,   1, 0x02000E59) /* Setup */
     , (802941,   3, 0x20000014) /* SoundTable */
     , (802941,   8,  100671812) /* Icon */
     , (802941,  22, 0x3400002B) /* PhysicsEffectTable */;

