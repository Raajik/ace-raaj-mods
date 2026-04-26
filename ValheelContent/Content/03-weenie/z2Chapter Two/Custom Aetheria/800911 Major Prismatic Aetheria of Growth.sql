DELETE FROM `weenie` WHERE `class_Id` = 800911;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800911, 'Major Prismatic Aethereia of Growth', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800911,   1,       2048) /* ItemType - Gem */
     , (800911,   3,          2) /* PaletteTemplate - Blue */
     , (800911,   5,         50) /* EncumbranceVal */
     , (800911,   9,  1073741824) /* ValidLocations - SigilLocRed */
     , (800911,  11,          1) /* MaxStackSize */
     , (800911,  12,          1) /* StackSize */
     , (800911,  13,         50) /* StackUnitEncumbrance */
     , (800911,  15,        2500) /* StackUnitValue */
     , (800911,  16,          1) /* ItemUseable - No */
     , (800911,  18,          1) /* UiEffects - Magical */
     , (800911,  19,        2500) /* Value */
     , (800911,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800911, 106,        999) /* ItemSpellcraft */
     , (800911, 107,      50000) /* ItemCurMana */
     , (800911, 108,      50000) /* ItemMaxMana */
     , (800911, 158,          7) /* WieldRequirements - Level */
     , (800911, 159,          1) /* WieldSkillType - Axe */
     , (800911, 160,        350) /* WieldDifficulty */
     , (800911, 265,         38) /* SigilVigor */
     , (800911, 319,          5) /* ItemMaxLevel */
     , (800911, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (800911, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800911,   4,  750000000) /* ItemTotalXp */
     , (800911,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800911,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800911,   5,  -0.001) /* ManaRate */
     , (800911,  39,     0.8) /* DefaultScale */
	 , (800911, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800911,   1, 'Major Prismatic Aetheria of Growth') /* Name */
     , (800911,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800911,   1,   33556258) /* Setup */
     , (800911,   3,  536870932) /* SoundTable */
     , (800911,   6,   67111919) /* PaletteBase */
     , (800911,   7,  268435723) /* ClothingBase */
     , (800911,   8,      27659) /* Icon */
     , (800911,  22,  872415275) /* PhysicsEffectTable */
     , (800911,  50,      15393) /* IconOverlay */
     , (800911,  55,       4331) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800911,  5449,      2)  /* Surging Strength */
     , (800911,  5978,      2)  /* Rare Armor Damage Boost */
     , (800911,  6295,      2)  /* Paragon's Critical Damage Boost V */
     , (800911,  6300,      2)  /* Paragon's Critical Damage Reduction V */;