DELETE FROM `weenie` WHERE `class_Id` = 800341;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800341, 'Dispel Self8', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800341,   1,       2048) /* ItemType - Gem */
     , (800341,   3,          2) /* PaletteTemplate - Blue */
     , (800341,   5,          1) /* EncumbranceVal */
     , (800341,  11,        100) /* MaxStackSize */
     , (800341,  12,          1) /* StackSize */
     , (800341,  13,          1) /* StackUnitEncumbrance */
     , (800341,  15,          5) /* StackUnitValue */
     , (800341,  16,          8) /* ItemUseable - Contained */
     , (800341,  18,          1) /* UiEffects - Magical */
     , (800341,  19,          5) /* Value */
     , (800341,  33,          1) /* Bonded - Bonded */
     , (800341,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800341,  94,         16) /* TargetType - Creature */
     , (800341, 106,        210) /* ItemSpellcraft */
     , (800341, 107,        500) /* ItemCurMana */
     , (800341, 108,        500) /* ItemMaxMana */
     , (800341, 109,          0) /* ItemDifficulty */
     , (800341, 110,          0) /* ItemAllegianceRankLimit */
     , (800341, 114,          1) /* Attuned - Attuned */
     , (800341, 267,      86400) /* Lifespan */
     , (800341, 280,          2) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800341,  23, True ) /* DestroyOnSell */
     , (800341,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800341,  39,     1.2) /* DefaultScale */
     , (800341, 167,      10) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800341,   1, 'Dispel Self 8') /* Name */
     , (800341,  16, 'Dispel all level 8 and below positive enchantments.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800341,   1,   33554809) /* Setup */
     , (800341,   3,  536870932) /* SoundTable */
     , (800341,   6,   67111919) /* PaletteBase */
     , (800341,   7,  268435723) /* ClothingBase */
     , (800341,   8,  100671405) /* Icon */
     , (800341,  22,  872415275) /* PhysicsEffectTable */
     , (800341,  28,       4333) /* Spell - Incantation of Nullify All Magic Self */;
