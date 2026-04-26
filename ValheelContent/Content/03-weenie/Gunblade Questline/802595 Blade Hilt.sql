DELETE FROM `weenie` WHERE `class_Id` = 802595;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802595, 'BladeHilt', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802595,   1,        128) /* ItemType - Misc */
     , (802595,   3,          8) /* PaletteTemplate - Green */
     , (802595,   5,         50) /* EncumbranceVal */
     , (802595,   8,         50) /* Mass */
     , (802595,   9,          0) /* ValidLocations - None */
     , (802595,  11,          1) /* MaxStackSize */
     , (802595,  12,          1) /* StackSize */
     , (802595,  13,         50) /* StackUnitEncumbrance */
     , (802595,  14,         50) /* StackUnitMass */
     , (802595,  15,          0) /* StackUnitValue */
     , (802595,  16,          1) /* ItemUseable - No */
     , (802595,  18,          0) /* UiEffects - Magical */
     , (802595,  19,          0) /* Value */
     , (802595,  33,         -1) /* Bonded - Bonded */
     , (802595,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802595,  22, True ) /* Inscribable */
     , (802595,  23, True ) /* DestroyOnSell */
     , (802595,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802595,  39,      1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802595,   1, 'Blade Hilt') /* Name */
     , (802595,  33, 'BladeHiltPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802595,   1,   33556951) /* Setup */
     , (802595,   3,  536870932) /* SoundTable */
     , (802595,   6,   67111919) /* PaletteBase */
     , (802595,   7,  268435723) /* ClothingBase */
     , (802595,   8,  100671327) /* Icon */
     , (802595,  22,  872415275) /* PhysicsEffectTable */;
