DELETE FROM `weenie` WHERE `class_Id` = 802946;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802946, 'LifeWellCooldown', 38, '2023-09-06 11:28:35') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802946,   1,       2048) /* ItemType - Gem */
     , (802946,   3,         39) /* PaletteTemplate - Black */
     , (802946,   5,          5) /* EncumbranceVal */
     , (802946,   8,          5) /* Mass */
     , (802946,  11,         50) /* MaxStackSize */
     , (802946,  12,          1) /* StackSize */
     , (802946,  13,          5) /* StackUnitEncumbrance */
     , (802946,  14,          5) /* StackUnitMass */
     , (802946,  15,       5000) /* StackUnitValue */
     , (802946,  16,          8) /* ItemUseable - Contained */
     , (802946,  18,          0) /* UiEffects - Magical */
     , (802946,  19,       5000) /* Value */
     , (802946,  33,          1) /* Bonded - Bonded */
     , (802946,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802946,  94,         16) /* TargetType - Creature */
     , (802946, 106,        325) /* ItemSpellcraft */
     , (802946, 107,      10000) /* ItemCurMana */
     , (802946, 108,      10000) /* ItemMaxMana */
     , (802946, 114,          1) /* Attuned - Attuned */
     , (802946, 280,        552) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802946,  22, True ) /* Inscribable */
     , (802946,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802946,   1, 'Life Well Cooldown') /* Name */
     , (802946,  14, 'This is a cooldown visualizer that will be triggered using the Chaos Helper bar.') /* Use */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802946, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802946,   1, 0x02000E59) /* Setup */
     , (802946,   3, 0x20000014) /* SoundTable */
     , (802946,   8,  100672016) /* Icon */
     , (802946,  22, 0x3400002B) /* PhysicsEffectTable */;

