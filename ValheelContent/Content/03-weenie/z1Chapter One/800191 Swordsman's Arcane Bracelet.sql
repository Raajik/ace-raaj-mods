DELETE FROM `weenie` WHERE `class_Id` = 800191;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800191, 'Swordsman''s Arcane Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800191,   1,          8) /* ItemType - Jewelry */
     , (800191,   3,         82) /* PaletteTemplate - PinkPurple */
     , (800191,   5,         40) /* EncumbranceVal */
     , (800191,   8,         30) /* Mass */
     , (800191,   9,     196608) /* ValidLocations - WristWear */
     , (800191,  16,          1) /* ItemUseable - No */
     , (800191,  18,          1) /* UiEffects - Magical */
     , (800191,  19,         30) /* Value */
     , (800191,  33,          1) /* Bonded - Bonded */
     , (800191,  36,       9999) /* ResistMagic */
     , (800191,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800191, 106,        999) /* ItemSpellcraft */
     , (800191, 107,       1000) /* ItemCurMana */
     , (800191, 108,       1000) /* ItemMaxMana */
     , (800191, 109,         50) /* ItemDifficulty */
     , (800191, 114,          1) /* Attuned - Attuned */
     , (800191, 158,          1) /* WieldRequirements - Skill */
     , (800191, 159,          6) /* WieldSkillType - MeleeDefense */
     , (800191, 160,        400) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800191,  22, True ) /* Inscribable */
     , (800191,  23, True ) /* DestroyOnSell */
     , (800191,  69, False) /* IsSellable */
     , (800191,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800191,   5,  -0.033) /* ManaRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800191,   1, 'Swordsman''s Arcane Bracelet') /* Name */
     , (800191,  16, 'A rare Arcane infused bracelet designed for melee fighters.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800191,   1,   33554683) /* Setup */
     , (800191,   3,  536870932) /* SoundTable */
     , (800191,   6,   67111919) /* PaletteBase */
     , (800191,   7,  268436286) /* ClothingBase */
     , (800191,   8,  100675477) /* Icon */
     , (800191,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800191,  3682,      2)  /* Prodigal Arcane Enlightenment */;
