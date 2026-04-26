DELETE FROM `weenie` WHERE `class_Id` = 800871;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800871, 'Crafter Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800871,   1,          8) /* ItemType - Jewelry */
     , (800871,   3,         21) /* PaletteTemplate - Gold */
     , (800871,   5,        150) /* EncumbranceVal */
     , (800871,   8,         60) /* Mass */
     , (800871,   9,     196608) /* ValidLocations - WristWear */
     , (800871,  16,          1) /* ItemUseable - No */
     , (800871,  18,          1) /* UiEffects - Magical */
     , (800871,  19,         25) /* Value */
     , (800871,  33,          1) /* Bonded - Bonded */
     , (800871,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800871, 106,        200) /* ItemSpellcraft */
     , (800871, 107,        700) /* ItemCurMana */
     , (800871, 108,        700) /* ItemMaxMana */
     , (800871, 109,        300) /* ItemDifficulty */
     , (800871, 114,          1) /* Attuned - Attuned */
     , (800871, 265,         18) /* Wise */
     , (800871, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800871,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800871,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800871,   1, 'Crafter Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800871,   1,   33554682) /* Setup */
     , (800871,   3,  536870932) /* SoundTable */
     , (800871,   6,   67111919) /* PaletteBase */
     , (800871,   7,  268435739) /* ClothingBase */
     , (800871,   8,  100668622) /* Icon */
     , (800871,  22,  872415275) /* PhysicsEffectTable */
     , (800871,  36,  234881046) /* MutateFilter */;
