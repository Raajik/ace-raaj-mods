DELETE FROM `weenie` WHERE `class_Id` = 800867;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800867, 'Adept''s Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800867,   1,          8) /* ItemType - Jewelry */
     , (800867,   3,         21) /* PaletteTemplate - Gold */
     , (800867,   5,        150) /* EncumbranceVal */
     , (800867,   8,         60) /* Mass */
     , (800867,   9,     196608) /* ValidLocations - WristWear */
     , (800867,  16,          1) /* ItemUseable - No */
     , (800867,  18,          1) /* UiEffects - Magical */
     , (800867,  19,         25) /* Value */
     , (800867,  33,          1) /* Bonded - Bonded */
     , (800867,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800867, 106,        200) /* ItemSpellcraft */
     , (800867, 107,        700) /* ItemCurMana */
     , (800867, 108,        700) /* ItemMaxMana */
     , (800867, 109,        300) /* ItemDifficulty */
     , (800867, 114,          1) /* Attuned - Attuned */
     , (800867, 265,         14) /* Wise */
     , (800867, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800867,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800867,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800867,   1, 'Adept''s Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800867,   1,   33554682) /* Setup */
     , (800867,   3,  536870932) /* SoundTable */
     , (800867,   6,   67111919) /* PaletteBase */
     , (800867,   7,  268435739) /* ClothingBase */
     , (800867,   8,  100668622) /* Icon */
     , (800867,  22,  872415275) /* PhysicsEffectTable */
     , (800867,  36,  234881046) /* MutateFilter */;
