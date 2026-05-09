DELETE FROM `weenie` WHERE `class_Id` = 802328;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802328, 'Haven Aethereia of Defense', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802328,   1,       2048) /* ItemType - Gem */
     , (802328,   3,          2) /* PaletteTemplate - Blue */
     , (802328,   5,         50) /* EncumbranceVal */
     , (802328,   9,  1073741824) /* ValidLocations - SigilLocRed */
     , (802328,  11,          1) /* MaxStackSize */
     , (802328,  12,          1) /* StackSize */
     , (802328,  13,         50) /* StackUnitEncumbrance */
     , (802328,  15,        12000) /* StackUnitValue */
     , (802328,  16,          1) /* ItemUseable - No */
     , (802328,  18,          1) /* UiEffects - Magical */
     , (802328,  19,        12000) /* Value */
     , (802328,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802328, 106,        999) /* ItemSpellcraft */
     , (802328, 107,      50000) /* ItemCurMana */
     , (802328, 108,      50000) /* ItemMaxMana */
     , (802328, 158,          7) /* WieldRequirements - Level */
     , (802328, 159,          1) /* WieldSkillType - Axe */
     , (802328, 160,        500) /* WieldDifficulty */
     , (802328, 265,         35) /* SigilVigor */
     , (802328, 319,          5) /* ItemMaxLevel */
     , (802328, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802328, 370,         35) /* GearMaxHealth */
     , (802328, 371,         35) /* GearMaxHealth */
     , (802328, 372,         35) /* GearMaxHealth */
     , (802328, 373,         35) /* GearMaxHealth */
     , (802328, 374,         35) /* GearMaxHealth */
     , (802328, 375,         35) /* GearMaxHealth */
     , (802328, 376,         35) /* GearMaxHealth */
     , (802328, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802328,   4,  750000000) /* ItemTotalXp */
     , (802328,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802328,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802328,   5,  -0.001) /* ManaRate */
     , (802328,  39,     0.8) /* DefaultScale */
	 , (802328, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802328,   1, 'Haven Aetheria of Defense') /* Name */
     , (802328,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802328,   1,   33556258) /* Setup */
     , (802328,   3,  536870932) /* SoundTable */
     , (802328,   6,   67111919) /* PaletteBase */
     , (802328,   7,  268435723) /* ClothingBase */
     , (802328,   8,      100690932) /* Icon */
     , (802328,  22,  872415275) /* PhysicsEffectTable */
     , (802328,  50,      100690932) /* IconOverlay */
     , (802328,  55,       3684) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802328,  5253,      2)  /* Sigil of Defense XV */;