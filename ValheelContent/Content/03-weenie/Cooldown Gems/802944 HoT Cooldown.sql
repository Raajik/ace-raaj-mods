DELETE FROM `weenie` WHERE `class_Id` = 802944;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802944, 'HoTCooldown', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802944,   1,       2048) /* ItemType - Gem */
     , (802944,   3,         39) /* PaletteTemplate - Black */
     , (802944,   5,          5) /* EncumbranceVal */
     , (802944,   8,          5) /* Mass */
     , (802944,  11,         50) /* MaxStackSize */
     , (802944,  12,          1) /* StackSize */
     , (802944,  13,          5) /* StackUnitEncumbrance */
     , (802944,  14,          5) /* StackUnitMass */
     , (802944,  15,       5000) /* StackUnitValue */
     , (802944,  16,          8) /* ItemUseable - Contained */
     , (802944,  18,          0) /* UiEffects - Magical */
     , (802944,  19,       5000) /* Value */
     , (802944,  33,          1) /* Bonded - Bonded */
     , (802944,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802944,  94,         16) /* TargetType - Creature */
     , (802944, 106,        325) /* ItemSpellcraft */
     , (802944, 107,      10000) /* ItemCurMana */
     , (802944, 108,      10000) /* ItemMaxMana */
     , (802944, 114,          1) /* Attuned - Attuned */
     , (802944, 280,        550) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802944,  22, True ) /* Inscribable */
     , (802944,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802944,   1, 'Heal Over Time Cooldown') /* Name */
     , (802944,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802944, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802944,   1, 0x02000E59) /* Setup */
     , (802944,   3, 0x20000014) /* SoundTable */
     , (802944,   8,  100672009) /* Icon */
     , (802944,  22, 0x3400002B) /* PhysicsEffectTable */;

