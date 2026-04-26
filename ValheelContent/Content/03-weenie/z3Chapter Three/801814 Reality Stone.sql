DELETE FROM `weenie` WHERE `class_Id` = 801814;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801814, 'Reality Stone', 38, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801814,   1,        128) /* ItemType - Misc */
     , (801814,   5,         50) /* EncumbranceVal */
     , (801814,  11,          1) /* MaxStackSize */
     , (801814,  12,          1) /* StackSize */
     , (801814,  13,         50) /* StackUnitEncumbrance */
     , (801814,  15,          0) /* StackUnitValue */
     , (801814,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801814,  19,          0) /* Value */
     , (801814,  33,          1) /* Bonded - Bonded */
     , (801814,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801814,  94,        128) /* TargetType - Misc */
     , (801814, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801814,  22, True ) /* Inscribable */
     , (801814,  23, True ) /* DestroyOnSell */
     , (801814,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801814,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801814,   1, 'Reality Stone') /* Name */
     , (801814,  14, 'A powerful artifact that has the ability to manipulate reality.') /* Use */
     , (801814,  33, 'progenitorcrystal1pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801814,   1,   33559838) /* Setup */
     , (801814,   3,  536870932) /* SoundTable */
     , (801814,   8,  100671235) /* Icon */
     , (801814,  22,  872415275) /* PhysicsEffectTable */;
