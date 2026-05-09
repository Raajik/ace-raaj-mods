DELETE FROM `weenie` WHERE `class_Id` = 800877;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800877, 'Reinforced Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800877,   1,          8) /* ItemType - Jewelry */
     , (800877,   3,         21) /* PaletteTemplate - Gold */
     , (800877,   5,        150) /* EncumbranceVal */
     , (800877,   8,         60) /* Mass */
     , (800877,   9,     196608) /* ValidLocations - WristWear */
     , (800877,  16,          1) /* ItemUseable - No */
     , (800877,  18,          1) /* UiEffects - Magical */
     , (800877,  19,         25) /* Value */
     , (800877,  33,          1) /* Bonded - Bonded */
     , (800877,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800877, 106,        200) /* ItemSpellcraft */
     , (800877, 107,        700) /* ItemCurMana */
     , (800877, 108,        700) /* ItemMaxMana */
     , (800877, 109,        300) /* ItemDifficulty */
     , (800877, 114,          1) /* Attuned - Attuned */
     , (800877, 265,         24) /* Wise */
     , (800877, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800877,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800877,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800877,   1, 'Reinforced Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800877,   1,   33554682) /* Setup */
     , (800877,   3,  536870932) /* SoundTable */
     , (800877,   6,   67111919) /* PaletteBase */
     , (800877,   7,  268435739) /* ClothingBase */
     , (800877,   8,  100668622) /* Icon */
     , (800877,  22,  872415275) /* PhysicsEffectTable */
     , (800877,  36,  234881046) /* MutateFilter */;
