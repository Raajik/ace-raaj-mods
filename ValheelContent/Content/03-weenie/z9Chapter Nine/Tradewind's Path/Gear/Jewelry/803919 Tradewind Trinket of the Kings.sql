DELETE FROM `weenie` WHERE `class_Id` = 803919;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803919, 'Tradewind Trinket of the Kings', 1, '2024-05-05 09:13:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803919,   1,          8) /* ItemType - Jewelry */
     , (803919,   5,         60) /* EncumbranceVal */
     , (803919,   9,   67108864) /* ValidLocations - TrinketOne */
     , (803919,  16,          1) /* ItemUseable - No */
     , (803919,  19,         10) /* Value */
     , (803919,  33,          1) /* Bonded - Bonded */
     , (803919,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803919, 106,        999) /* ItemSpellcraft */
     , (803919, 107,       3000) /* ItemCurMana */
     , (803919, 108,       3000) /* ItemMaxMana */
     , (803919, 151,          2) /* HookType - Wall */
	 , (803919, 158,          7) /* WieldRequirements - Level */
     , (803919, 160,      10000) /* WieldDifficulty */
     , (803919, 114,          1) /* Attuned - Attuned */
     , (803919, 370,       1500) /* GearDamage */
     , (803919, 371,       1500) /* GearDamageResist */
     , (803919, 374,       1500) /* GearCritDamage */
     , (803919, 375,       1500) /* GearCritDamageResist */
     , (803919, 376,       1500) /* GearHealBoost */
     , (803919, 379,       2250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803919,  11, True ) /* IgnoreCollisions */
     , (803919,  13, True ) /* Ethereal */
     , (803919,  14, True ) /* GravityStatus */
     , (803919,  19, True ) /* Attackable */
     , (803919,  22, True ) /* Inscribable */
     , (803919,  91, False) /* Retained */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803919,   5,  -0.049) /* ManaRate */
     , (803919,  39,    0.67) /* DefaultScale */
     , (803919, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803919,   1, 'Tradewind Trinket of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803919,   1,   33554685) /* Setup */
     , (803919,   3,  536870932) /* SoundTable */
     , (803919,   6,   67108990) /* PaletteBase */
     , (803919,   7,  268435509) /* ClothingBase */
     , (803919,   8,  100669185) /* Icon */
     , (803919,  22,  872415275) /* PhysicsEffectTable */
     , (803919,  52,  100667892) /* IconUnderlay */
     , (803919,  55,       4643) /* ProcSpell - Incantation of Drain Stamina Other */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803919,  4372,      2)  /* Prodigal Defender */
     , (803919,  2933,      2)  /* Prodigal Defender */;