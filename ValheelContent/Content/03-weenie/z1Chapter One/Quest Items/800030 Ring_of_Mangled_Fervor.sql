DELETE FROM `weenie` WHERE `class_Id` = 800030;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800030, 'mangledfervor', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800030,   1,          8) /* ItemType - Jewelry */
     , (800030,   3,         39) /* PaletteTemplate - Black */
     , (800030,   5,         15) /* EncumbranceVal */
     , (800030,   8,         10) /* Mass */
     , (800030,   9,     786432) /* ValidLocations - FingerWear */
     , (800030,  16,          1) /* ItemUseable - No */
     , (800030,  18,          1) /* UiEffects - Magical */
     , (800030,  19,       6000) /* Value */
     , (800030,  33,          1) /* Bonded - Bonded */
     , (800030,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800030, 114,          2) /* Attuned - Attuned */
     , (800030, 106,        210) /* ItemSpellcraft */
     , (800030, 107,        200) /* ItemCurMana */
     , (800030, 108,       1000) /* ItemMaxMana */
     , (800030, 109,        210) /* ItemDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800030,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800030,   5,    -0.3) /* ManaRate */
     , (800030,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800030,   1, 'Ring of Mangled Fervor') /* Name */
     , (800030,  16, 'This ring looks to be rare, but harmful. Take it to the Arcanum research team and have it inspected.') /* LongDesc */
     , (800030,  33, 'RingofMangledFervor') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800030,   1,   33554691) /* Setup */
     , (800030,   3,  536870932) /* SoundTable */
     , (800030,   6,   67111919) /* PaletteBase */
     , (800030,   7,  268435753) /* ClothingBase */
     , (800030,   8,  100667317) /* Icon */
     , (800030,  22,  872415275) /* PhysicsEffectTable */
     , (800030,  36,  234881046) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800030,   1347,      2)  /* Weakness V */;
