DELETE FROM `weenie` WHERE `class_Id` = 802111;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802111, 'spinebronze2', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802111,   1,        128) /* ItemType - Misc */
     , (802111,   3,         40) /* PaletteTemplate - Bronze */
     , (802111,   5,        220) /* EncumbranceVal */
     , (802111,   8,        110) /* Mass */
     , (802111,   9,          0) /* ValidLocations - None */
     , (802111,  11,          1) /* MaxStackSize */
     , (802111,  12,          1) /* StackSize */
     , (802111,  13,        220) /* StackUnitEncumbrance */
     , (802111,  14,        110) /* StackUnitMass */
     , (802111,  15,         50) /* StackUnitValue */
     , (802111,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (802111,  19,         50) /* Value */
     , (802111,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802111,  94,          1) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802111,  22, True ) /* Inscribable */
     , (802111,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802111,  39,     0.4) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802111,   1, 'Bronze Armoredillo Spine') /* Name */
     , (802111,  33, 'SpinePickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802111,   1,   33554817) /* Setup */
     , (802111,   3,  536870932) /* SoundTable */
     , (802111,   6,   67111919) /* PaletteBase */
     , (802111,   7,  268435832) /* ClothingBase */
     , (802111,   8,  100670069) /* Icon */
     , (802111,  22,  872415275) /* PhysicsEffectTable */;
