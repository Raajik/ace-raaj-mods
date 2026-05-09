DELETE FROM `weenie` WHERE `class_Id` = 800855;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800855, 'Ring of Wisdom', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800855,   1,          8) /* ItemType - Jewelry */
     , (800855,   3,         21) /* PaletteTemplate - Gold */
     , (800855,   5,         15) /* EncumbranceVal */
     , (800855,   8,         10) /* Mass */
     , (800855,   9,     786432) /* ValidLocations - FingerWear */
     , (800855,  16,          1) /* ItemUseable - No */
     , (800855,  18,          1) /* UiEffects - Magical */
     , (800855,  19,       25) /* Value */
     , (800855,  33,          1) /* Bonded - Bonded */
     , (800855,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800855, 106,        200) /* ItemSpellcraft */
     , (800855, 107,        700) /* ItemCurMana */
     , (800855, 108,        700) /* ItemMaxMana */
     , (800855, 109,        300) /* ItemDifficulty */
     , (800855, 114,          1) /* Attuned - Attuned */
     , (800855, 265,         21) /* Wise */
     , (800855, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800855,  22, True ) /* Inscribable */
     , (800855,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800855,   5,  -0.033) /* ManaRate */
     , (800855,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800855,   1, 'Ring of Wisdom') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800855,   1,   33554691) /* Setup */
     , (800855,   3,  536870932) /* SoundTable */
     , (800855,   6,   67111919) /* PaletteBase */
     , (800855,   7,  268435753) /* ClothingBase */
     , (800855,   8,  100677349) /* Icon */
     , (800855,  22,  872415275) /* PhysicsEffectTable */;
