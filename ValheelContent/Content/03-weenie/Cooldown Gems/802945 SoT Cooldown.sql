DELETE FROM `weenie` WHERE `class_Id` = 802945;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802945, 'SoTCooldown', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802945,   1,       2048) /* ItemType - Gem */
     , (802945,   3,         39) /* PaletteTemplate - Black */
     , (802945,   5,          5) /* EncumbranceVal */
     , (802945,   8,          5) /* Mass */
     , (802945,  11,         50) /* MaxStackSize */
     , (802945,  12,          1) /* StackSize */
     , (802945,  13,          5) /* StackUnitEncumbrance */
     , (802945,  14,          5) /* StackUnitMass */
     , (802945,  15,       5000) /* StackUnitValue */
     , (802945,  16,          8) /* ItemUseable - Contained */
     , (802945,  18,          0) /* UiEffects - Magical */
     , (802945,  19,       5000) /* Value */
     , (802945,  33,          1) /* Bonded - Bonded */
     , (802945,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802945,  94,         16) /* TargetType - Creature */
     , (802945, 106,        325) /* ItemSpellcraft */
     , (802945, 107,      10000) /* ItemCurMana */
     , (802945, 108,      10000) /* ItemMaxMana */
     , (802945, 114,          1) /* Attuned - Attuned */
     , (802945, 280,        550) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802945,  22, True ) /* Inscribable */
     , (802945,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802945,   1, 'Stamina Over Time Cooldown') /* Name */
     , (802945,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802945, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802945,   1, 0x02000E59) /* Setup */
     , (802945,   3, 0x20000014) /* SoundTable */
     , (802945,   8,  100671786) /* Icon */
     , (802945,  22, 0x3400002B) /* PhysicsEffectTable */;

