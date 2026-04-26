DELETE FROM `weenie` WHERE `class_Id` = 800875;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800875, 'Swift Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800875,   1,          8) /* ItemType - Jewelry */
     , (800875,   3,         21) /* PaletteTemplate - Gold */
     , (800875,   5,        150) /* EncumbranceVal */
     , (800875,   8,         60) /* Mass */
     , (800875,   9,     196608) /* ValidLocations - WristWear */
     , (800875,  16,          1) /* ItemUseable - No */
     , (800875,  18,          1) /* UiEffects - Magical */
     , (800875,  19,         25) /* Value */
     , (800875,  33,          1) /* Bonded - Bonded */
     , (800875,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800875, 106,        200) /* ItemSpellcraft */
     , (800875, 107,        700) /* ItemCurMana */
     , (800875, 108,        700) /* ItemMaxMana */
     , (800875, 109,        300) /* ItemDifficulty */
     , (800875, 114,          1) /* Attuned - Attuned */
     , (800875, 265,         22) /* Wise */
     , (800875, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800875,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800875,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800875,   1, 'Swift Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800875,   1,   33554682) /* Setup */
     , (800875,   3,  536870932) /* SoundTable */
     , (800875,   6,   67111919) /* PaletteBase */
     , (800875,   7,  268435739) /* ClothingBase */
     , (800875,   8,  100668622) /* Icon */
     , (800875,  22,  872415275) /* PhysicsEffectTable */
     , (800875,  36,  234881046) /* MutateFilter */;
