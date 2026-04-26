DELETE FROM `weenie` WHERE `class_Id` = 800872;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800872, 'Hearty Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800872,   1,          8) /* ItemType - Jewelry */
     , (800872,   3,         21) /* PaletteTemplate - Gold */
     , (800872,   5,        150) /* EncumbranceVal */
     , (800872,   8,         60) /* Mass */
     , (800872,   9,     196608) /* ValidLocations - WristWear */
     , (800872,  16,          1) /* ItemUseable - No */
     , (800872,  18,          1) /* UiEffects - Magical */
     , (800872,  19,         25) /* Value */
     , (800872,  33,          1) /* Bonded - Bonded */
     , (800872,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800872, 106,        200) /* ItemSpellcraft */
     , (800872, 107,        700) /* ItemCurMana */
     , (800872, 108,        700) /* ItemMaxMana */
     , (800872, 109,        300) /* ItemDifficulty */
     , (800872, 114,          1) /* Attuned - Attuned */
     , (800872, 265,         19) /* Wise */
     , (800872, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800872,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800872,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800872,   1, 'Hearty Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800872,   1,   33554682) /* Setup */
     , (800872,   3,  536870932) /* SoundTable */
     , (800872,   6,   67111919) /* PaletteBase */
     , (800872,   7,  268435739) /* ClothingBase */
     , (800872,   8,  100668622) /* Icon */
     , (800872,  22,  872415275) /* PhysicsEffectTable */
     , (800872,  36,  234881046) /* MutateFilter */;
