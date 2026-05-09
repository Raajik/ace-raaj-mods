DELETE FROM `weenie` WHERE `class_Id` = 800910;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800910, 'Major Prismatic Aethereia of Vigor', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800910,   1,       2048) /* ItemType - Gem */
     , (800910,   3,          2) /* PaletteTemplate - Blue */
     , (800910,   5,         50) /* EncumbranceVal */
     , (800910,   9,  1073741824) /* ValidLocations - SigilLocRed */
     , (800910,  11,          1) /* MaxStackSize */
     , (800910,  12,          1) /* StackSize */
     , (800910,  13,         50) /* StackUnitEncumbrance */
     , (800910,  15,        2500) /* StackUnitValue */
     , (800910,  16,          1) /* ItemUseable - No */
     , (800910,  18,          1) /* UiEffects - Magical */
     , (800910,  19,        2500) /* Value */
     , (800910,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800910, 106,        999) /* ItemSpellcraft */
     , (800910, 107,      50000) /* ItemCurMana */
     , (800910, 108,      50000) /* ItemMaxMana */
     , (800910, 158,          7) /* WieldRequirements - Level */
     , (800910, 159,          1) /* WieldSkillType - Axe */
     , (800910, 160,        350) /* WieldDifficulty */
     , (800910, 265,         39) /* SigilVigor */
     , (800910, 319,          5) /* ItemMaxLevel */
     , (800910, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (800910, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800910,   4,  750000000) /* ItemTotalXp */
     , (800910,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800910,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800910,   5,  -0.001) /* ManaRate */
     , (800910,  39,     0.8) /* DefaultScale */
	 , (800910, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800910,   1, 'Major Prismatic Aetheria of Vigor') /* Name */
     , (800910,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800910,   1,   33556258) /* Setup */
     , (800910,   3,  536870932) /* SoundTable */
     , (800910,   6,   67111919) /* PaletteBase */
     , (800910,   7,  268435723) /* ClothingBase */
     , (800910,   8,      27659) /* Icon */
     , (800910,  22,  872415275) /* PhysicsEffectTable */
     , (800910,  50,      15393) /* IconOverlay */
     , (800910,  55,       4331) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800910,  5449,      2)  /* Surging Strength */
     , (800910,  5978,      2)  /* Rare Armor Damage Boost */
     , (800910,  6295,      2)  /* Paragon's Critical Damage Boost V */
     , (800910,  6300,      2)  /* Paragon's Critical Damage Reduction V */;