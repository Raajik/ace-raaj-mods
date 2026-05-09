DELETE FROM `weenie` WHERE `class_Id` = 800859;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800859, 'Ring of Tinkers', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800859,   1,          8) /* ItemType - Jewelry */
     , (800859,   3,         21) /* PaletteTemplate - Gold */
     , (800859,   5,         15) /* EncumbranceVal */
     , (800859,   8,         10) /* Mass */
     , (800859,   9,     786432) /* ValidLocations - FingerWear */
     , (800859,  16,          1) /* ItemUseable - No */
     , (800859,  18,          1) /* UiEffects - Magical */
     , (800859,  19,         25) /* Value */
     , (800859,  33,          1) /* Bonded - Bonded */
     , (800859,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800859, 106,        200) /* ItemSpellcraft */
     , (800859, 107,        700) /* ItemCurMana */
     , (800859, 108,        700) /* ItemMaxMana */
     , (800859, 109,        300) /* ItemDifficulty */
     , (800859, 114,          1) /* Attuned - Attuned */
     , (800859, 265,         17) /* Wise */
     , (800859, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800859,  22, True ) /* Inscribable */
     , (800859,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800859,   5,  -0.033) /* ManaRate */
     , (800859,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800859,   1, 'Ring of Tinkers') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800859,   1,   33554691) /* Setup */
     , (800859,   3,  536870932) /* SoundTable */
     , (800859,   6,   67111919) /* PaletteBase */
     , (800859,   7,  268435753) /* ClothingBase */
     , (800859,   8,  100677349) /* Icon */
     , (800859,  22,  872415275) /* PhysicsEffectTable */;
