DELETE FROM `weenie` WHERE `class_Id` = 800860;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800860, 'Ring of Crafters', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800860,   1,          8) /* ItemType - Jewelry */
     , (800860,   3,         21) /* PaletteTemplate - Gold */
     , (800860,   5,         15) /* EncumbranceVal */
     , (800860,   8,         10) /* Mass */
     , (800860,   9,     786432) /* ValidLocations - FingerWear */
     , (800860,  16,          1) /* ItemUseable - No */
     , (800860,  18,          1) /* UiEffects - Magical */
     , (800860,  19,         25) /* Value */
     , (800860,  33,          1) /* Bonded - Bonded */
     , (800860,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800860, 106,        200) /* ItemSpellcraft */
     , (800860, 107,        700) /* ItemCurMana */
     , (800860, 108,        700) /* ItemMaxMana */
     , (800860, 109,        300) /* ItemDifficulty */
     , (800860, 114,          1) /* Attuned - Attuned */
     , (800860, 265,         18) /* Wise */
     , (800860, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800860,  22, True ) /* Inscribable */
     , (800860,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800860,   5,  -0.033) /* ManaRate */
     , (800860,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800860,   1, 'Ring of Crafters') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800860,   1,   33554691) /* Setup */
     , (800860,   3,  536870932) /* SoundTable */
     , (800860,   6,   67111919) /* PaletteBase */
     , (800860,   7,  268435753) /* ClothingBase */
     , (800860,   8,  100677349) /* Icon */
     , (800860,  22,  872415275) /* PhysicsEffectTable */;
