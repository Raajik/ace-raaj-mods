DELETE FROM `weenie` WHERE `class_Id` = 800870;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800870, 'Tinker Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800870,   1,          8) /* ItemType - Jewelry */
     , (800870,   3,         21) /* PaletteTemplate - Gold */
     , (800870,   5,        150) /* EncumbranceVal */
     , (800870,   8,         60) /* Mass */
     , (800870,   9,     196608) /* ValidLocations - WristWear */
     , (800870,  16,          1) /* ItemUseable - No */
     , (800870,  18,          1) /* UiEffects - Magical */
     , (800870,  19,         25) /* Value */
     , (800870,  33,          1) /* Bonded - Bonded */
     , (800870,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800870, 106,        200) /* ItemSpellcraft */
     , (800870, 107,        700) /* ItemCurMana */
     , (800870, 108,        700) /* ItemMaxMana */
     , (800870, 109,        300) /* ItemDifficulty */
     , (800870, 114,          1) /* Attuned - Attuned */
     , (800870, 265,         17) /* Wise */
     , (800870, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800870,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800870,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800870,   1, 'Tinker Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800870,   1,   33554682) /* Setup */
     , (800870,   3,  536870932) /* SoundTable */
     , (800870,   6,   67111919) /* PaletteBase */
     , (800870,   7,  268435739) /* ClothingBase */
     , (800870,   8,  100668622) /* Icon */
     , (800870,  22,  872415275) /* PhysicsEffectTable */
     , (800870,  36,  234881046) /* MutateFilter */;
