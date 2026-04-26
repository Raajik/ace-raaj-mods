DELETE FROM `weenie` WHERE `class_Id` = 800100;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800100, 'Repaired Ring of Fervor', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800100,   1,          8) /* ItemType - Jewelry */
     , (800100,   3,         39) /* PaletteTemplate - Black */
     , (800100,   5,         15) /* EncumbranceVal */
     , (800100,   8,         10) /* Mass */
     , (800100,   9,     786432) /* ValidLocations - FingerWear */
     , (800100,  16,          1) /* ItemUseable - No */
     , (800100,  18,          1) /* UiEffects - Magical */
     , (800100,  19,       6000) /* Value */
     , (800100,  65,        101) /* Placement - Resting */
     , (800100,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800100, 114,          2) /* Attuned - Attuned */
     , (800100, 106,        210) /* ItemSpellcraft */
     , (800100, 107,        200) /* ItemCurMana */
     , (800100, 108,       1000) /* ItemMaxMana */
     , (800100, 109,        210) /* ItemDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800100,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800100,   5,    -0.3) /* ManaRate */
     , (800100,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800100,   1, 'Repaired Ring of Fervor') /* Name */
     , (800100,  16, 'This ring should help with repairs to armor and weapons.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800100,   1,   33554691) /* Setup */
     , (800100,   3,  536870932) /* SoundTable */
     , (800100,   6,   67111919) /* PaletteBase */
     , (800100,   7,  268435753) /* ClothingBase */
     , (800100,   8,  100667317) /* Icon */
     , (800100,  22,  872415275) /* PhysicsEffectTable */
     , (800100,  36,  234881046) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800100,   6042,      2)  /* Legendary Armor Tink */
     , (800100,   6057,      2)  /* Legendary Item Tink */
     , (800100,   6062,      2)  /* Legendary Magic Item Tink */
     , (800100,   6039,      2)  /* Legendary Weapon Tink */
     , (800100,   3572,      2)  /* Inner Brilliance */;
