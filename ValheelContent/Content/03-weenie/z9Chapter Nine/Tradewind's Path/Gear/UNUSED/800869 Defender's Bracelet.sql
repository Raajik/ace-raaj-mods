DELETE FROM `weenie` WHERE `class_Id` = 800869;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800869, 'Defender''s Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800869,   1,          8) /* ItemType - Jewelry */
     , (800869,   3,         21) /* PaletteTemplate - Gold */
     , (800869,   5,        150) /* EncumbranceVal */
     , (800869,   8,         60) /* Mass */
     , (800869,   9,     196608) /* ValidLocations - WristWear */
     , (800869,  16,          1) /* ItemUseable - No */
     , (800869,  18,          1) /* UiEffects - Magical */
     , (800869,  19,         25) /* Value */
     , (800869,  33,          1) /* Bonded - Bonded */
     , (800869,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800869, 106,        200) /* ItemSpellcraft */
     , (800869, 107,        700) /* ItemCurMana */
     , (800869, 108,        700) /* ItemMaxMana */
     , (800869, 109,        300) /* ItemDifficulty */
     , (800869, 114,          1) /* Attuned - Attuned */
     , (800869, 265,         16) /* Wise */
     , (800869, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800869,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800869,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800869,   1, 'Defender''s Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800869,   1,   33554682) /* Setup */
     , (800869,   3,  536870932) /* SoundTable */
     , (800869,   6,   67111919) /* PaletteBase */
     , (800869,   7,  268435739) /* ClothingBase */
     , (800869,   8,  100668622) /* Icon */
     , (800869,  22,  872415275) /* PhysicsEffectTable */
     , (800869,  36,  234881046) /* MutateFilter */;
