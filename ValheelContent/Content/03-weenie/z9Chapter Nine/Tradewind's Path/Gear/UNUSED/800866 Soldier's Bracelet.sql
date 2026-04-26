DELETE FROM `weenie` WHERE `class_Id` = 800866;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800866, 'Soldier''s Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800866,   1,          8) /* ItemType - Jewelry */
     , (800866,   3,         21) /* PaletteTemplate - Gold */
     , (800866,   5,        150) /* EncumbranceVal */
     , (800866,   8,         60) /* Mass */
     , (800866,   9,     196608) /* ValidLocations - WristWear */
     , (800866,  16,          1) /* ItemUseable - No */
     , (800866,  18,          1) /* UiEffects - Magical */
     , (800866,  19,         25) /* Value */
     , (800866,  33,          1) /* Bonded - Bonded */
     , (800866,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800866, 106,        200) /* ItemSpellcraft */
     , (800866, 107,        700) /* ItemCurMana */
     , (800866, 108,        700) /* ItemMaxMana */
     , (800866, 109,        300) /* ItemDifficulty */
     , (800866, 114,          1) /* Attuned - Attuned */
     , (800866, 265,         13) /* Wise */
     , (800866, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800866,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800866,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800866,   1, 'Soldier''s Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800866,   1,   33554682) /* Setup */
     , (800866,   3,  536870932) /* SoundTable */
     , (800866,   6,   67111919) /* PaletteBase */
     , (800866,   7,  268435739) /* ClothingBase */
     , (800866,   8,  100668622) /* Icon */
     , (800866,  22,  872415275) /* PhysicsEffectTable */
     , (800866,  36,  234881046) /* MutateFilter */;
