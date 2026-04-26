DELETE FROM `weenie` WHERE `class_Id` = 801817;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801817, 'Soul Stone', 38, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801817,   1,        128) /* ItemType - Misc */
     , (801817,   5,         50) /* EncumbranceVal */
     , (801817,  11,          1) /* MaxStackSize */
     , (801817,  12,          1) /* StackSize */
     , (801817,  13,         50) /* StackUnitEncumbrance */
     , (801817,  15,          0) /* StackUnitValue */
     , (801817,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801817,  19,          0) /* Value */
     , (801817,  33,          1) /* Bonded - Bonded */
     , (801817,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801817,  94,        128) /* TargetType - Misc */
     , (801817, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801817,  22, True ) /* Inscribable */
     , (801817,  23, True ) /* DestroyOnSell */
     , (801817,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801817,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801817,   1, 'Soul Stone') /* Name */
     , (801817,  14, 'A powerful artifact that has the ability to manipulate time.') /* Use */
     , (801817,  33, 'progenitorcrystal1pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801817,   1,   33559838) /* Setup */
     , (801817,   3,  536870932) /* SoundTable */
     , (801817,   8,  100690428) /* Icon */
     , (801817,  22,  872415275) /* PhysicsEffectTable */;
