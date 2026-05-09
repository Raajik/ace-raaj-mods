DELETE FROM `weenie` WHERE `class_Id` = 800868;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800868, 'Archer''s Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800868,   1,          8) /* ItemType - Jewelry */
     , (800868,   3,         21) /* PaletteTemplate - Gold */
     , (800868,   5,        150) /* EncumbranceVal */
     , (800868,   8,         60) /* Mass */
     , (800868,   9,     196608) /* ValidLocations - WristWear */
     , (800868,  16,          1) /* ItemUseable - No */
     , (800868,  18,          1) /* UiEffects - Magical */
     , (800868,  19,         25) /* Value */
     , (800868,  33,          1) /* Bonded - Bonded */
     , (800868,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800868, 106,        200) /* ItemSpellcraft */
     , (800868, 107,        700) /* ItemCurMana */
     , (800868, 108,        700) /* ItemMaxMana */
     , (800868, 109,        300) /* ItemDifficulty */
     , (800868, 114,          1) /* Attuned - Attuned */
     , (800868, 265,         15) /* Wise */
     , (800868, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800868,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800868,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800868,   1, 'Archer''s Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800868,   1,   33554682) /* Setup */
     , (800868,   3,  536870932) /* SoundTable */
     , (800868,   6,   67111919) /* PaletteBase */
     , (800868,   7,  268435739) /* ClothingBase */
     , (800868,   8,  100668622) /* Icon */
     , (800868,  22,  872415275) /* PhysicsEffectTable */
     , (800868,  36,  234881046) /* MutateFilter */;
