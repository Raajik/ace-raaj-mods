DELETE FROM `weenie` WHERE `class_Id` = 802327;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802327, 'Haven Aethereia of Vigor', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802327,   1,       2048) /* ItemType - Gem */
     , (802327,   3,          2) /* PaletteTemplate - Blue */
     , (802327,   5,         50) /* EncumbranceVal */
     , (802327,   9,  1073741824) /* ValidLocations - SigilLocRed */
     , (802327,  11,          1) /* MaxStackSize */
     , (802327,  12,          1) /* StackSize */
     , (802327,  13,         50) /* StackUnitEncumbrance */
     , (802327,  15,        12000) /* StackUnitValue */
     , (802327,  16,          1) /* ItemUseable - No */
     , (802327,  18,          1) /* UiEffects - Magical */
     , (802327,  19,        12000) /* Value */
     , (802327,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802327, 106,        999) /* ItemSpellcraft */
     , (802327, 107,      50000) /* ItemCurMana */
     , (802327, 108,      50000) /* ItemMaxMana */
     , (802327, 158,          7) /* WieldRequirements - Level */
     , (802327, 159,          1) /* WieldSkillType - Axe */
     , (802327, 160,        500) /* WieldDifficulty */
     , (802327, 265,         39) /* SigilVigor */
     , (802327, 319,          5) /* ItemMaxLevel */
     , (802327, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802327, 370,         35) /* GearMaxHealth */
     , (802327, 371,         35) /* GearMaxHealth */
     , (802327, 372,         35) /* GearMaxHealth */
     , (802327, 373,         35) /* GearMaxHealth */
     , (802327, 374,         35) /* GearMaxHealth */
     , (802327, 375,         35) /* GearMaxHealth */
     , (802327, 376,         35) /* GearMaxHealth */
     , (802327, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802327,   4,  750000000) /* ItemTotalXp */
     , (802327,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802327,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802327,   5,  -0.001) /* ManaRate */
     , (802327,  39,     0.8) /* DefaultScale */
	 , (802327, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802327,   1, 'Haven Aetheria of Vigor') /* Name */
     , (802327,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802327,   1,   33556258) /* Setup */
     , (802327,   3,  536870932) /* SoundTable */
     , (802327,   6,   67111919) /* PaletteBase */
     , (802327,   7,  268435723) /* ClothingBase */
     , (802327,   8,      100690932) /* Icon */
     , (802327,  22,  872415275) /* PhysicsEffectTable */
     , (802327,  50,      100690932) /* IconOverlay */
     , (802327,  55,       3684) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802327,  5283,      2)  /* Sigil of Vigor XV */
     , (802327,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (802327,  5313,      2)  /* Sigil of Vigor Stamina XV */;