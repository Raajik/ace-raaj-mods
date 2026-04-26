DELETE FROM `weenie` WHERE `class_Id` = 802336;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802336, 'Haven Aethereia of Growth3', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802336,   1,       2048) /* ItemType - Gem */
     , (802336,   3,          2) /* PaletteTemplate - Blue */
     , (802336,   5,         50) /* EncumbranceVal */
     , (802336,   9,  268435456) /* ValidLocations - SigilLocRed */
     , (802336,  11,          1) /* MaxStackSize */
     , (802336,  12,          1) /* StackSize */
     , (802336,  13,         50) /* StackUnitEncumbrance */
     , (802336,  15,        12000) /* StackUnitValue */
     , (802336,  16,          1) /* ItemUseable - No */
     , (802336,  18,          1) /* UiEffects - Magical */
     , (802336,  19,        12000) /* Value */
     , (802336,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802336, 106,        999) /* ItemSpellcraft */
     , (802336, 107,      50000) /* ItemCurMana */
     , (802336, 108,      50000) /* ItemMaxMana */
     , (802336, 158,          7) /* WieldRequirements - Level */
     , (802336, 159,          1) /* WieldSkillType - Axe */
     , (802336, 160,        500) /* WieldDifficulty */
     , (802336, 265,         38) /* SigilVigor */
     , (802336, 319,          5) /* ItemMaxLevel */
     , (802336, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802336, 370,         35) /* GearMaxHealth */
     , (802336, 371,         35) /* GearMaxHealth */
     , (802336, 372,         35) /* GearMaxHealth */
     , (802336, 373,         35) /* GearMaxHealth */
     , (802336, 374,         35) /* GearMaxHealth */
     , (802336, 375,         35) /* GearMaxHealth */
     , (802336, 376,         35) /* GearMaxHealth */
     , (802336, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802336,   4,  750000000) /* ItemTotalXp */
     , (802336,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802336,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802336,   5,  -0.001) /* ManaRate */
     , (802336,  39,     0.8) /* DefaultScale */
	 , (802336, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802336,   1, 'Haven Aetheria of Growth') /* Name */
     , (802336,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802336,   1,   33556258) /* Setup */
     , (802336,   3,  536870932) /* SoundTable */
     , (802336,   6,   67111919) /* PaletteBase */
     , (802336,   7,  268435723) /* ClothingBase */
     , (802336,   8,      100690930) /* Icon */
     , (802336,  22,  872415275) /* PhysicsEffectTable */
     , (802336,  50,      100690930) /* IconOverlay */
     , (802336,  55,       4331) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802336,  5268,      2)  /* Sigil of Growth XV */;