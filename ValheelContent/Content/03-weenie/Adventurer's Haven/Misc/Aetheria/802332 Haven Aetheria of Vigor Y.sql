DELETE FROM `weenie` WHERE `class_Id` = 802332;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802332, 'Haven Aethereia of Vigor2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802332,   1,       2048) /* ItemType - Gem */
     , (802332,   3,          2) /* PaletteTemplate - Blue */
     , (802332,   5,         50) /* EncumbranceVal */
     , (802332,   9,  536870912) /* ValidLocations - SigilLocRed */
     , (802332,  11,          1) /* MaxStackSize */
     , (802332,  12,          1) /* StackSize */
     , (802332,  13,         50) /* StackUnitEncumbrance */
     , (802332,  15,        12000) /* StackUnitValue */
     , (802332,  16,          1) /* ItemUseable - No */
     , (802332,  18,          1) /* UiEffects - Magical */
     , (802332,  19,        12000) /* Value */
     , (802332,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802332, 106,        999) /* ItemSpellcraft */
     , (802332, 107,      50000) /* ItemCurMana */
     , (802332, 108,      50000) /* ItemMaxMana */
     , (802332, 158,          7) /* WieldRequirements - Level */
     , (802332, 159,          1) /* WieldSkillType - Axe */
     , (802332, 160,        500) /* WieldDifficulty */
     , (802332, 265,         39) /* SigilVigor */
     , (802332, 319,          5) /* ItemMaxLevel */
     , (802332, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802332, 370,         35) /* GearMaxHealth */
     , (802332, 371,         35) /* GearMaxHealth */
     , (802332, 372,         35) /* GearMaxHealth */
     , (802332, 373,         35) /* GearMaxHealth */
     , (802332, 374,         35) /* GearMaxHealth */
     , (802332, 375,         35) /* GearMaxHealth */
     , (802332, 376,         35) /* GearMaxHealth */
     , (802332, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802332,   4,  750000000) /* ItemTotalXp */
     , (802332,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802332,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802332,   5,  -0.001) /* ManaRate */
     , (802332,  39,     0.8) /* DefaultScale */
	 , (802332, 156,     0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802332,   1, 'Haven Aetheria of Vigor') /* Name */
     , (802332,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802332,   1,   33556258) /* Setup */
     , (802332,   3,  536870932) /* SoundTable */
     , (802332,   6,   67111919) /* PaletteBase */
     , (802332,   7,  268435723) /* ClothingBase */
     , (802332,   8,      100690931) /* Icon */
     , (802332,  22,  872415275) /* PhysicsEffectTable */
     , (802332,  50,      100690931) /* IconOverlay */
     , (802332,  55,       2933) /* ProcSpell - Nullify All Magic VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802332,  5283,      2)  /* Sigil of Vigor XV */
     , (802332,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (802332,  5313,      2)  /* Sigil of Vigor Stamina XV */;