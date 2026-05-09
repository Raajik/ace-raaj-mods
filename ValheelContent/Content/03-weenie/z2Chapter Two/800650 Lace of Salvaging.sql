DELETE FROM `weenie` WHERE `class_Id` = 800650;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800650, 'Lace of Salvaging', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800650,   1,          8) /* ItemType - Jewelry */
     , (800650,   5,        150) /* EncumbranceVal */
     , (800650,   9,      32768) /* ValidLocations - NeckWear */
     , (800650,  16,          1) /* ItemUseable - No */
     , (800650,  18,          1) /* UiEffects - Magical */
     , (800650,  19,      10000) /* Value */
     , (800650,  36,       9999) /* ResistMagic */
     , (800650,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800650, 106,        350) /* ItemSpellcraft */
     , (800650, 107,       6000) /* ItemCurMana */
     , (800650, 108,       6000) /* ItemMaxMana */
     , (800650, 109,        200) /* ItemDifficulty */
     , (800650, 150,        103) /* HookPlacement - Hook */
     , (800650, 151,          2) /* HookType - Wall */
     , (800650, 158,          7) /* WieldRequirements - Level */
     , (800650, 159,          1) /* WieldSkillType - Axe */
     , (800650, 160,        100) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800650,  22, True ) /* Inscribable */
     , (800650,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800650,   5,   -0.05) /* ManaRate */
     , (800650,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800650,   1, 'Lace of Salvaging') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800650,   1,   33554680) /* Setup */
     , (800650,   3,  536870932) /* SoundTable */
     , (800650,   8,  100688552) /* Icon */
     , (800650,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800650,  4499,      2)  /* Aura of Resistance */
     , (800650,  4501,      2)  /* Minor Acid Ward */
     , (800650,  3748,      2)  /* Minor Flame Ward */
     , (800650,  6068,      2)  /* Minor Frost Ward */
     , (800650,  5707,      2)  /* Minor Storm Ward */;
