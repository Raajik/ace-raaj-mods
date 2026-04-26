DELETE FROM `weenie` WHERE `class_Id` = 801815;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801815, 'Power Stone', 38, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801815,   1,        128) /* ItemType - Misc */
     , (801815,   5,         50) /* EncumbranceVal */
     , (801815,  11,          1) /* MaxStackSize */
     , (801815,  12,          1) /* StackSize */
     , (801815,  13,         50) /* StackUnitEncumbrance */
     , (801815,  15,          0) /* StackUnitValue */
     , (801815,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801815,  19,          0) /* Value */
     , (801815,  33,          1) /* Bonded - Bonded */
     , (801815,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801815,  94,        128) /* TargetType - Misc */
     , (801815, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801815,  22, True ) /* Inscribable */
     , (801815,  23, True ) /* DestroyOnSell */
     , (801815,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801815,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801815,   1, 'Power Stone') /* Name */
     , (801815,  14, 'A powerful artifact that has the ability to manipulate power.') /* Use */
     , (801815,  33, 'progenitorcrystal1pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801815,   1,   33559839) /* Setup */
     , (801815,   3,  536870932) /* SoundTable */
     , (801815,   8,  100671231) /* Icon */
     , (801815,  22,  872415275) /* PhysicsEffectTable */;
