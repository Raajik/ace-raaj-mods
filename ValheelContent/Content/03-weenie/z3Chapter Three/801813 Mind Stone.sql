DELETE FROM `weenie` WHERE `class_Id` = 801813;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801813, 'Mind Stone', 38, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801813,   1,        128) /* ItemType - Misc */
     , (801813,   5,         50) /* EncumbranceVal */
     , (801813,  11,          1) /* MaxStackSize */
     , (801813,  12,          1) /* StackSize */
     , (801813,  13,         50) /* StackUnitEncumbrance */
     , (801813,  15,          0) /* StackUnitValue */
     , (801813,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801813,  19,          0) /* Value */
     , (801813,  33,          1) /* Bonded - Bonded */
     , (801813,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801813,  94,        128) /* TargetType - Misc */
     , (801813, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801813,  22, True ) /* Inscribable */
     , (801813,  23, True ) /* DestroyOnSell */
     , (801813,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801813,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801813,   1, 'Mind Stone') /* Name */
     , (801813,  14, 'A powerful artifact that has the ability to manipulate the mind.') /* Use */
     , (801813,  33, 'progenitorcrystal1pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801813,   1,   33559841) /* Setup */
     , (801813,   3,  536870932) /* SoundTable */
     , (801813,   8,  100671233) /* Icon */
     , (801813,  22,  872415275) /* PhysicsEffectTable */;
