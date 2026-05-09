DELETE FROM `weenie` WHERE `class_Id` = 800913;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800913, 'Major Prismatic Aethereia of Destruction', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800913,   1,       2048) /* ItemType - Gem */
     , (800913,   3,          2) /* PaletteTemplate - Blue */
     , (800913,   5,         50) /* EncumbranceVal */
     , (800913,   9, 1073741824) /* ValidLocations - SigilThree */
     , (800913,  11,          1) /* MaxStackSize */
     , (800913,  12,          1) /* StackSize */
     , (800913,  13,         50) /* StackUnitEncumbrance */
     , (800913,  15,       2500) /* StackUnitValue */
     , (800913,  16,          1) /* ItemUseable - No */
     , (800913,  18,          1) /* UiEffects - Magical */
     , (800913,  19,       2500) /* Value */
     , (800913,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800913, 106,        999) /* ItemSpellcraft */
     , (800913, 107,      50000) /* ItemCurMana */
     , (800913, 108,      50000) /* ItemMaxMana */
     , (800913, 158,          7) /* WieldRequirements - Level */
     , (800913, 159,          1) /* WieldSkillType - Axe */
     , (800913, 160,        350) /* WieldDifficulty */
     , (800913, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (800913, 319,          5) /* ItemMaxLevel */
     , (800913, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (800913, 379,         20) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800913,   4,  750000000) /* ItemTotalXp */
     , (800913,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800913,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800913,   5,  -0.001) /* ManaRate */
     , (800913,  39,     0.8) /* DefaultScale */
     , (800913, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800913,   1, 'Major Prismatic Aetheria of Destruction') /* Name */
     , (800913,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800913,   1,   33556258) /* Setup */
     , (800913,   3,  536870932) /* SoundTable */
     , (800913,   6,   67111919) /* PaletteBase */
     , (800913,   7,  268435723) /* ClothingBase */
     , (800913,   8,      27659) /* Icon */
     , (800913,  22,  872415275) /* PhysicsEffectTable */
     , (800913,  50,      15393) /* IconOverlay */
     , (800913,  55,       4331) /* ProcSpell - Incantation of Nullify All Magic Self */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800913,  5449,      2)  /* Surging Strength */
     , (800913,  5978,      2)  /* Rare Armor Damage Boost V */
     , (800913,  6295,      2)  /* Paragon's Critical Damage Boost V */
     , (800913,  6300,      2)  /* Paragon's Critical Damage Reduction V */;
