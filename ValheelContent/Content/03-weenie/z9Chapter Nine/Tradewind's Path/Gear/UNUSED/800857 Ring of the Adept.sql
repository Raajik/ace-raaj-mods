DELETE FROM `weenie` WHERE `class_Id` = 800857;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800857, 'Ring of The Adept', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800857,   1,          8) /* ItemType - Jewelry */
     , (800857,   3,         21) /* PaletteTemplate - Gold */
     , (800857,   5,         15) /* EncumbranceVal */
     , (800857,   8,         10) /* Mass */
     , (800857,   9,     786432) /* ValidLocations - FingerWear */
     , (800857,  16,          1) /* ItemUseable - No */
     , (800857,  18,          1) /* UiEffects - Magical */
     , (800857,  19,       25) /* Value */
     , (800857,  33,          1) /* Bonded - Bonded */
     , (800857,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800857, 106,        200) /* ItemSpellcraft */
     , (800857, 107,        700) /* ItemCurMana */
     , (800857, 108,        700) /* ItemMaxMana */
     , (800857, 109,        300) /* ItemDifficulty */
     , (800857, 114,          1) /* Attuned - Attuned */
     , (800857, 265,         14) /* Wise */
     , (800857, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800857,  22, True ) /* Inscribable */
     , (800857,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800857,   5,  -0.033) /* ManaRate */
     , (800857,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800857,   1, 'Ring of The Adept') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800857,   1,   33554691) /* Setup */
     , (800857,   3,  536870932) /* SoundTable */
     , (800857,   6,   67111919) /* PaletteBase */
     , (800857,   7,  268435753) /* ClothingBase */
     , (800857,   8,  100677349) /* Icon */
     , (800857,  22,  872415275) /* PhysicsEffectTable */;
