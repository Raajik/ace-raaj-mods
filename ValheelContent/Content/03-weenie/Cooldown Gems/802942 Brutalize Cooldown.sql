DELETE FROM `weenie` WHERE `class_Id` = 802942;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802942, 'BrutalizeCooldown', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802942,   1,       2048) /* ItemType - Gem */
     , (802942,   3,         39) /* PaletteTemplate - Black */
     , (802942,   5,          5) /* EncumbranceVal */
     , (802942,   8,          5) /* Mass */
     , (802942,  11,         50) /* MaxStackSize */
     , (802942,  12,          1) /* StackSize */
     , (802942,  13,          5) /* StackUnitEncumbrance */
     , (802942,  14,          5) /* StackUnitMass */
     , (802942,  15,       5000) /* StackUnitValue */
     , (802942,  16,          8) /* ItemUseable - Contained */
     , (802942,  18,          0) /* UiEffects - Magical */
     , (802942,  19,       5000) /* Value */
     , (802942,  33,          1) /* Bonded - Bonded */
     , (802942,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802942,  94,         16) /* TargetType - Creature */
     , (802942, 106,        325) /* ItemSpellcraft */
     , (802942, 107,      10000) /* ItemCurMana */
     , (802942, 108,      10000) /* ItemMaxMana */
     , (802942, 114,          1) /* Attuned - Attuned */
     , (802942, 280,        555) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802942,  22, True ) /* Inscribable */
     , (802942,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802942,   1, 'Brutalize Cooldown') /* Name */
     , (802942,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802942, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802942,   1, 0x02000E59) /* Setup */
     , (802942,   3, 0x20000014) /* SoundTable */
     , (802942,   8,  100671818) /* Icon */
     , (802942,  22, 0x3400002B) /* PhysicsEffectTable */;

