DELETE FROM `weenie` WHERE `class_Id` = 800328;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800328, 'Shadow Gem of Dispelling', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800328,   1,       2048) /* ItemType - Gem */
     , (800328,   3,          2) /* PaletteTemplate - Blue */
     , (800328,   5,          1) /* EncumbranceVal */
     , (800328,  11,        100) /* MaxStackSize */
     , (800328,  12,          1) /* StackSize */
     , (800328,  13,          1) /* StackUnitEncumbrance */
     , (800328,  15,          5) /* StackUnitValue */
     , (800328,  16,          8) /* ItemUseable - Contained */
     , (800328,  18,          1) /* UiEffects - Magical */
     , (800328,  19,          5) /* Value */
     , (800328,  33,          1) /* Bonded - Bonded */
     , (800328,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800328,  94,         16) /* TargetType - Creature */
     , (800328, 106,        210) /* ItemSpellcraft */
     , (800328, 107,        500) /* ItemCurMana */
     , (800328, 108,        500) /* ItemMaxMana */
     , (800328, 109,          0) /* ItemDifficulty */
     , (800328, 110,          0) /* ItemAllegianceRankLimit */
     , (800328, 114,          1) /* Attuned - Attuned */
     , (800328, 267,      86400) /* Lifespan */
     , (800328, 280,          2) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800328,  23, True ) /* DestroyOnSell */
     , (800328,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800328,  39,     1.2) /* DefaultScale */
     , (800328, 167,      10) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800328,   1, 'Shadow Gem of Dispelling') /* Name */
     , (800328,  16, 'Dispel all level 8 and below negative enchantments.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800328,   1,   33554809) /* Setup */
     , (800328,   3,  536870932) /* SoundTable */
     , (800328,   6,   67111919) /* PaletteBase */
     , (800328,   7,  268435723) /* ClothingBase */
     , (800328,   8,  100671405) /* Icon */
     , (800328,  22,  872415275) /* PhysicsEffectTable */
     , (800328,  28,       4331) /* Spell - Incantation of Nullify All Magic Self */;
