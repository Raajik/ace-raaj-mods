DELETE FROM `weenie` WHERE `class_Id` = 802270;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802270, 'ArramoranArrowShafts', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802270,   1,  134217728) /* ItemType - CraftFletchingIntermediate */
     , (802270,   5,          0) /* EncumbranceVal */
     , (802270,   8,          5) /* Mass */
     , (802270,   9,          0) /* ValidLocations - None */
     , (802270,  11,          1) /* MaxStackSize */
     , (802270,  12,          1) /* StackSize */
     , (802270,  13,          0) /* StackUnitEncumbrance */
     , (802270,  14,          5) /* StackUnitMass */
     , (802270,  15,      20000) /* StackUnitValue */
     , (802270,  19,      20000) /* Value */
     , (802270,  33,          1) /* Bonded - Bonded */
     , (802270,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802270,  23, True ) /* DestroyOnSell */
     , (802270,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802270,   1, 'Wrapped Bundle of Arramoran Arrowshafts') /* Name */
     , (802270,  20, 'Wrapped Bundles of Arrowshafts') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802270,   1,   33557031) /* Setup */
     , (802270,   3,  536870932) /* SoundTable */
     , (802270,   8,  100671591) /* Icon */
     , (802270,  22,  872415275) /* PhysicsEffectTable */
     , (802270,  52,  100686604) /* IconUnderlay */;
