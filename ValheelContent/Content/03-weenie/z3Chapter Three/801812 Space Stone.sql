DELETE FROM `weenie` WHERE `class_Id` = 801812;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801812, 'Space Stone', 38, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801812,   1,        128) /* ItemType - Misc */
     , (801812,   5,         50) /* EncumbranceVal */
     , (801812,  11,          1) /* MaxStackSize */
     , (801812,  12,          1) /* StackSize */
     , (801812,  13,         50) /* StackUnitEncumbrance */
     , (801812,  15,          0) /* StackUnitValue */
     , (801812,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801812,  19,          0) /* Value */
     , (801812,  33,          1) /* Bonded - Bonded */
     , (801812,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801812,  94,        128) /* TargetType - Misc */
     , (801812, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801812,  22, True ) /* Inscribable */
     , (801812,  23, True ) /* DestroyOnSell */
     , (801812,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801812,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801812,   1, 'Space Stone') /* Name */
     , (801812,  14, 'A powerful artifact that has the ability to manipulate space.') /* Use */
     , (801812,  33, 'progenitorcrystal1pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801812,   1,   33559840) /* Setup */
     , (801812,   3,  536870932) /* SoundTable */
     , (801812,   8,  100690427) /* Icon */
     , (801812,  22,  872415275) /* PhysicsEffectTable */;
