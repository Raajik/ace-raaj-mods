DELETE FROM `weenie` WHERE `class_Id` = 800914;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800914, 'Major Prismatic Aethereia of Defense', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800914,   1,       2048) /* ItemType - Gem */
     , (800914,   3,          2) /* PaletteTemplate - Blue */
     , (800914,   5,         50) /* EncumbranceVal */
     , (800914,   9,  1073741824) /* ValidLocations - SigilLocRed */
     , (800914,  11,          1) /* MaxStackSize */
     , (800914,  12,          1) /* StackSize */
     , (800914,  13,         50) /* StackUnitEncumbrance */
     , (800914,  15,        2500) /* StackUnitValue */
     , (800914,  16,          1) /* ItemUseable - No */
     , (800914,  18,          1) /* UiEffects - Magical */
     , (800914,  19,        2500) /* Value */
     , (800914,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800914, 106,        999) /* ItemSpellcraft */
     , (800914, 107,      50000) /* ItemCurMana */
     , (800914, 108,      50000) /* ItemMaxMana */
     , (800914, 158,          7) /* WieldRequirements - Level */
     , (800914, 159,          1) /* WieldSkillType - Axe */
     , (800914, 160,        350) /* WieldDifficulty */
     , (800914, 265,         35) /* SigilVigor */
     , (800914, 319,          5) /* ItemMaxLevel */
     , (800914, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (800914, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800914,   4,  750000000) /* ItemTotalXp */
     , (800914,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800914,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800914,   5,  -0.001) /* ManaRate */
     , (800914,  39,     0.8) /* DefaultScale */
	 , (800914, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800914,   1, 'Major Prismatic Aetheria of Defense') /* Name */
     , (800914,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800914,   1,   33556258) /* Setup */
     , (800914,   3,  536870932) /* SoundTable */
     , (800914,   6,   67111919) /* PaletteBase */
     , (800914,   7,  268435723) /* ClothingBase */
     , (800914,   8,      27659) /* Icon */
     , (800914,  22,  872415275) /* PhysicsEffectTable */
     , (800914,  50,      15393) /* IconOverlay */
     , (800914,  55,       4331) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800914,  5449,      2)  /* Surging Strength */
     , (800914,  5978,      2)  /* Rare Armor Damage Boost */
     , (800914,  6295,      2)  /* Paragon's Critical Damage Boost V */
     , (800914,  6300,      2)  /* Paragon's Critical Damage Reduction V */;