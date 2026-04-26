DELETE FROM `weenie` WHERE `class_Id` = 802337;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802337, 'Haven Aethereia of Vigor3', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802337,   1,       2048) /* ItemType - Gem */
     , (802337,   3,          2) /* PaletteTemplate - Blue */
     , (802337,   5,         50) /* EncumbranceVal */
     , (802337,   9,  268435456) /* ValidLocations - SigilLocRed */
     , (802337,  11,          1) /* MaxStackSize */
     , (802337,  12,          1) /* StackSize */
     , (802337,  13,         50) /* StackUnitEncumbrance */
     , (802337,  15,        12000) /* StackUnitValue */
     , (802337,  16,          1) /* ItemUseable - No */
     , (802337,  18,          1) /* UiEffects - Magical */
     , (802337,  19,        12000) /* Value */
     , (802337,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802337, 106,        999) /* ItemSpellcraft */
     , (802337, 107,      50000) /* ItemCurMana */
     , (802337, 108,      50000) /* ItemMaxMana */
     , (802337, 158,          7) /* WieldRequirements - Level */
     , (802337, 159,          1) /* WieldSkillType - Axe */
     , (802337, 160,        500) /* WieldDifficulty */
     , (802337, 265,         39) /* SigilVigor */
     , (802337, 319,          5) /* ItemMaxLevel */
     , (802337, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802337, 370,         35) /* GearMaxHealth */
     , (802337, 371,         35) /* GearMaxHealth */
     , (802337, 372,         35) /* GearMaxHealth */
     , (802337, 373,         35) /* GearMaxHealth */
     , (802337, 374,         35) /* GearMaxHealth */
     , (802337, 375,         35) /* GearMaxHealth */
     , (802337, 376,         35) /* GearMaxHealth */
     , (802337, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802337,   4,  750000000) /* ItemTotalXp */
     , (802337,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802337,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802337,   5,  -0.001) /* ManaRate */
     , (802337,  39,     0.8) /* DefaultScale */
	 , (802337, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802337,   1, 'Haven Aetheria of Vigor') /* Name */
     , (802337,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802337,   1,   33556258) /* Setup */
     , (802337,   3,  536870932) /* SoundTable */
     , (802337,   6,   67111919) /* PaletteBase */
     , (802337,   7,  268435723) /* ClothingBase */
     , (802337,   8,      100690930) /* Icon */
     , (802337,  22,  872415275) /* PhysicsEffectTable */
     , (802337,  50,      100690930) /* IconOverlay */
     , (802337,  55,       4331) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802337,  5283,      2)  /* Sigil of Vigor XV */
     , (802337,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (802337,  5313,      2)  /* Sigil of Vigor Stamina XV */;