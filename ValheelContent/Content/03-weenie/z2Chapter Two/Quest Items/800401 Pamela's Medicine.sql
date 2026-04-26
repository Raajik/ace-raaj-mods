DELETE FROM `weenie` WHERE `class_Id` = 800401;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800401, 'Pamela''s Medicine', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800401,   1,          1) /* ItemType - MeleeWeapon */
     , (800401,   3,          2) /* PaletteTemplate - Blue */
     , (800401,   5,         25) /* EncumbranceVal */
     , (800401,   8,          5) /* Mass */
     , (800401,  16,          0) /* ItemUseable - Undef */
     , (800401,  19,          0) /* Value */
     , (800401,  33,          1) /* Bonded - Bonded */
     , (800401,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800401, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800401,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800401,   1, 'Pamela''s Medicine') /* Name */
     , (800401,  15, 'A tincture made of clove, cinnamon, lemon, eucalyptus, rosemary and peppermint. It is made to fight off viral infections.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800401,   1,   33555965) /* Setup */
     , (800401,   3,  536870932) /* SoundTable */
     , (800401,   6,   67111919) /* PaletteBase */
     , (800401,   7,  268435814) /* ClothingBase */
     , (800401,   8,  100670001) /* Icon */
     , (800401,  22,  872415275) /* PhysicsEffectTable */
     , (800401,  52,  100667855) /* IconUnderlay */;
