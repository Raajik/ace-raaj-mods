DELETE FROM `weenie` WHERE `class_Id` = 802271;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802271, 'ArramoranArrowheads', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802271,   1,  134217728) /* ItemType - CraftFletchingIntermediate */
     , (802271,   5,          0) /* EncumbranceVal */
     , (802271,   9,          0) /* ValidLocations - None */
     , (802271,  11,          1) /* MaxStackSize */
     , (802271,  12,          1) /* StackSize */
     , (802271,  13,          0) /* StackUnitEncumbrance */
     , (802271,  15,      20000) /* StackUnitValue */
     , (802271,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (802271,  19,      20000) /* Value */
     , (802271,  33,          1) /* Bonded - Bonded */
     , (802271,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802271,  94,  134217728) /* TargetType - CraftFletchingIntermediate */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802271,  69, False) /* IsSellable */
     , (802271,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802271,   1, 'Wrapped Bundle of Arramoran Arrowheads') /* Name */
     , (802271,  14, 'This item is used in fletching.') /* Use */
     , (802271,  20, 'Wrapped Bundles of Arramoran Arrowheads') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802271,   1,   33557030) /* Setup */
     , (802271,   3,  536870932) /* SoundTable */
     , (802271,   8,  100691909) /* Icon */
     , (802271,  22,  872415275) /* PhysicsEffectTable */
     , (802271,  52,  100686604) /* IconUnderlay */;
