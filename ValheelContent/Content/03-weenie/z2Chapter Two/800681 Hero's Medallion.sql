DELETE FROM `weenie` WHERE `class_Id` = 800681;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800681, 'Hero''s Medallion', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800681,   1,          8) /* ItemType - Jewelry */
     , (800681,   5,         50) /* EncumbranceVal */
     , (800681,   9,      32768) /* ValidLocations - NeckWear */
     , (800681,  16,          1) /* ItemUseable - No */
     , (800681,  19,          0) /* Value */
     , (800681,  33,          1) /* Bonded - Bonded */
     , (800681,  36,       9999) /* ResistMagic */
     , (800681,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800681, 106,        999) /* ItemSpellcraft */
     , (800681, 107,      50000) /* ItemCurMana */
     , (800681, 108,      50000) /* ItemMaxMana */
     , (800681, 109,          0) /* ItemDifficulty */
     , (800681, 114,          1) /* Attuned - Attuned */
     , (800681, 158,          7) /* WieldRequirements - Level */
     , (800681, 159,          1) /* WieldSkillType - Axe */
     , (800681, 160,        325) /* WieldDifficulty */
     , (800681, 379,         25) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800681,  11, True ) /* IgnoreCollisions */
     , (800681,  13, True ) /* Ethereal */
     , (800681,  14, True ) /* GravityStatus */
     , (800681,  19, True ) /* Attackable */
     , (800681,  22, True ) /* Inscribable */
     , (800681,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800681,   5,  -0.001) /* ManaRate */
     , (800681,  39,     0.8) /* DefaultScale */
	 , (800681, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800681,   1, 'Hero''s Medallion') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800681,   1,   33554680) /* Setup */
     , (800681,   3,  536870932) /* SoundTable */
     , (800681,   8,  100686514) /* Icon */
     , (800681,  22,  872415275) /* PhysicsEffectTable */
     , (800681,  55,       3936) /* ProcSpell - Fire Bomb */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800681,  5223,      2)  /* Sigil of Fury XV */
     , (800681,  5238,      2)  /* Sigil of Destruction XV */
     , (800681,  5253,      2)  /* Sigil of Defense XV */
     , (800681,  5268,      2)  /* Sigil of Growth XV */
     , (800681,  5283,      2)  /* Sigil of Vigor XV */
     , (800681,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (800681,  5313,      2)  /* Sigil of Vigor Stamina XV */
     , (800681,  5449,      2)  /* Surging Strength */
     , (800681,  5978,      2)  /* Rare Armor Damage Boost */
     , (800681,  6295,      2)  /* Paragon's Critical Damage Boost V */
     , (800681,  6300,      2)  /* Paragon's Critical Damage Reduction V */;
