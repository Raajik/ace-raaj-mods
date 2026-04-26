DELETE FROM `weenie` WHERE `class_Id` = 800329;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800329, 'Emblazoned Coal', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800329,   1,       2048) /* ItemType - Gem */
     , (800329,   5,          1) /* EncumbranceVal */
     , (800329,   8,         75) /* Mass */
     , (800329,  11,          1) /* MaxStackSize */
     , (800329,  12,          1) /* StackSize */
     , (800329,  13,          1) /* StackUnitEncumbrance */
     , (800329,  14,         75) /* StackUnitMass */
     , (800329,  15,         25) /* StackUnitValue */
     , (800329,  16,          8) /* ItemUseable - Contained */
     , (800329,  18,          1) /* UiEffects - Magical */
     , (800329,  19,         25) /* Value */
     , (800329,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800329,  94,         16) /* TargetType - Creature */
     , (800329, 106,        150) /* ItemSpellcraft */
     , (800329, 107,         50) /* ItemCurMana */
     , (800329, 108,         50) /* ItemMaxMana */
     , (800329, 109,        200) /* ItemDifficulty */
     , (800329, 280,          2) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800329,  23, True ) /* DestroyOnSell */
     , (800329,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800329, 167,      10) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800329,   1, 'Emblazoned Coal') /* Name */
     , (800329,  14, 'Use this item to stoke the fire within.') /* Use */
     , (800329,  16, 'A smoldering coal. The center of this rock seems to glow with intense heat, yet the surface is cool to the touch.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800329,   1,   33558517) /* Setup */
     , (800329,   3,  536870932) /* SoundTable */
     , (800329,   8,  100676392) /* Icon */
     , (800329,  22,  872415275) /* PhysicsEffectTable */
     , (800329,  28,       3204) /* Spell - Blazing Heart */;
