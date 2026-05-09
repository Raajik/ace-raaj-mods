DELETE FROM `weenie` WHERE `class_Id` = 802324;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802324, 'Haven Aethereia of Destruction', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802324,   1,       2048) /* ItemType - Gem */
     , (802324,   3,          2) /* PaletteTemplate - Blue */
     , (802324,   5,         50) /* EncumbranceVal */
     , (802324,   9, 1073741824) /* ValidLocations - SigilThree */
     , (802324,  11,          1) /* MaxStackSize */
     , (802324,  12,          1) /* StackSize */
     , (802324,  13,         50) /* StackUnitEncumbrance */
     , (802324,  15,       12000) /* StackUnitValue */
     , (802324,  16,          1) /* ItemUseable - No */
     , (802324,  18,          1) /* UiEffects - Magical */
     , (802324,  19,       12000) /* Value */
     , (802324,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802324, 106,        999) /* ItemSpellcraft */
     , (802324, 107,      50000) /* ItemCurMana */
     , (802324, 108,      50000) /* ItemMaxMana */
     , (802324, 158,          7) /* WieldRequirements - Level */
     , (802324, 159,          1) /* WieldSkillType - Axe */
     , (802324, 160,        500) /* WieldDifficulty */
     , (802324, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (802324, 319,          5) /* ItemMaxLevel */
     , (802324, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802324, 370,         35) /* GearMaxHealth */
     , (802324, 371,         35) /* GearMaxHealth */
     , (802324, 372,         35) /* GearMaxHealth */
     , (802324, 373,         35) /* GearMaxHealth */
     , (802324, 374,         35) /* GearMaxHealth */
     , (802324, 375,         35) /* GearMaxHealth */
     , (802324, 376,         35) /* GearMaxHealth */
     , (802324, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802324,   4,  750000000) /* ItemTotalXp */
     , (802324,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802324,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802324,   5,  -0.001) /* ManaRate */
     , (802324,  39,     0.8) /* DefaultScale */
     , (802324, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802324,   1, 'Haven Aetheria of Destruction') /* Name */
     , (802324,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802324,   1,   33556258) /* Setup */
     , (802324,   3,  536870932) /* SoundTable */
     , (802324,   6,   67111919) /* PaletteBase */
     , (802324,   7,  268435723) /* ClothingBase */
     , (802324,   8,      100690932) /* Icon */
     , (802324,  22,  872415275) /* PhysicsEffectTable */
     , (802324,  50,      100690932) /* IconOverlay */
     , (802324,  55,       3684) /* ProcSpell - Incantation of Nullify All Magic Self */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802324,  5238,      2)  /* Sigil of Destruction XV */;
