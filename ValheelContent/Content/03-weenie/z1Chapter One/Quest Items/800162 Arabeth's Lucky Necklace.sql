DELETE FROM `weenie` WHERE `class_Id` = 800162;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800162, 'luckynecklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800162,   1,          8) /* ItemType - Jewelry */
     , (800162,   3,         21) /* PaletteTemplate - Gold */
     , (800162,   5,         45) /* EncumbranceVal */
     , (800162,   8,         30) /* Mass */
     , (800162,   9,      32768) /* ValidLocations - NeckWear */
     , (800162,  16,          1) /* ItemUseable - No */
     , (800162,  19,         50) /* Value */
     , (800162,  33,          1) /* Bonded - Bonded */
     , (800162,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800162, 114,          2) /* Attuned - Attuned */
     , (800162, 169,   33687300) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800162,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800162,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800162,   1, 'Necklace of Gemology') /* Name */
     , (800162,  33, 'ArabethNecklace') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800162,   1,   33554689) /* Setup */
     , (800162,   3,  536870932) /* SoundTable */
     , (800162,   6,   67111919) /* PaletteBase */
     , (800162,   7,  268435749) /* ClothingBase */
     , (800162,   8,  100668752) /* Icon */
     , (800162,  22,  872415275) /* PhysicsEffectTable */
     , (800162,  36,  234881046) /* MutateFilter */;
