DELETE FROM `weenie` WHERE `class_Id` = 801816;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801816, 'Time Stone', 38, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801816,   1,        128) /* ItemType - Misc */
     , (801816,   5,         50) /* EncumbranceVal */
     , (801816,  11,          1) /* MaxStackSize */
     , (801816,  12,          1) /* StackSize */
     , (801816,  13,         50) /* StackUnitEncumbrance */
     , (801816,  15,          0) /* StackUnitValue */
     , (801816,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801816,  19,          0) /* Value */
     , (801816,  33,          1) /* Bonded - Bonded */
     , (801816,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801816,  94,        128) /* TargetType - Misc */
     , (801816, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801816,  22, True ) /* Inscribable */
     , (801816,  23, True ) /* DestroyOnSell */
     , (801816,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801816,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801816,   1, 'Time Stone') /* Name */
     , (801816,  14, 'A powerful artifact that has the ability to manipulate time.') /* Use */
     , (801816,  33, 'progenitorcrystal1pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801816,   1,   33559841) /* Setup */
     , (801816,   3,  536870932) /* SoundTable */
     , (801816,   8,  100671234) /* Icon */
     , (801816,  22,  872415275) /* PhysicsEffectTable */;
