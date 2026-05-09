DELETE FROM `weenie` WHERE `class_Id` = 800220;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800220, 'Sven''s Ring', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800220,   1,          8) /* ItemType - Jewelry */
     , (800220,   3,         39) /* PaletteTemplate - Black */
     , (800220,   5,         15) /* EncumbranceVal */
     , (800220,   8,         10) /* Mass */
     , (800220,   9,     786432) /* ValidLocations - FingerWear */
     , (800220,  16,          1) /* ItemUseable - No */
     , (800220,  18,          1) /* UiEffects - Magical */
     , (800220,  19,       6000) /* Value */
     , (800220,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800220, 106,        210) /* ItemSpellcraft */
     , (800220, 107,        200) /* ItemCurMana */
     , (800220, 108,       1000) /* ItemMaxMana */
     , (800220, 109,        210) /* ItemDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800220,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800220,   5,    -0.3) /* ManaRate */
     , (800220,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800220,   1, 'Sven''s Ring of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800220,   1,   33554691) /* Setup */
     , (800220,   3,  536870932) /* SoundTable */
     , (800220,   6,   67111919) /* PaletteBase */
     , (800220,   7,  268435753) /* ClothingBase */
     , (800220,   8,  100667317) /* Icon */
     , (800220,  22,  872415275) /* PhysicsEffectTable */
     , (800220,  36,  234881046) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800220,  3705,      2)  /* Prodigal Focus */
     , (800220,  3695,      2)  /* Prodigal Focus */
     , (800220,  3717,      2)  /* Prodigal Focus */
     , (800220,  3733,      2)  /* Prodigal Focus */
     , (800220,  3743,      2)  /* Prodigal Focus */
     , (800220,  3713,      2)  /* Prodigal Focus */;
