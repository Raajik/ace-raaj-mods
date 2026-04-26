DELETE FROM `weenie` WHERE `class_Id` = 800876;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800876, 'Hardened Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800876,   1,          8) /* ItemType - Jewelry */
     , (800876,   3,         21) /* PaletteTemplate - Gold */
     , (800876,   5,        150) /* EncumbranceVal */
     , (800876,   8,         60) /* Mass */
     , (800876,   9,     196608) /* ValidLocations - WristWear */
     , (800876,  16,          1) /* ItemUseable - No */
     , (800876,  18,          1) /* UiEffects - Magical */
     , (800876,  19,         25) /* Value */
     , (800876,  33,          1) /* Bonded - Bonded */
     , (800876,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800876, 106,        200) /* ItemSpellcraft */
     , (800876, 107,        700) /* ItemCurMana */
     , (800876, 108,        700) /* ItemMaxMana */
     , (800876, 109,        300) /* ItemDifficulty */
     , (800876, 114,          1) /* Attuned - Attuned */
     , (800876, 265,         23) /* Wise */
     , (800876, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800876,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800876,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800876,   1, 'Hardened Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800876,   1,   33554682) /* Setup */
     , (800876,   3,  536870932) /* SoundTable */
     , (800876,   6,   67111919) /* PaletteBase */
     , (800876,   7,  268435739) /* ClothingBase */
     , (800876,   8,  100668622) /* Icon */
     , (800876,  22,  872415275) /* PhysicsEffectTable */
     , (800876,  36,  234881046) /* MutateFilter */;
