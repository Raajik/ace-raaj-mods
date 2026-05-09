DELETE FROM `weenie` WHERE `class_Id` = 800134;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800134, 'Meta Stone of Lesser Luminance', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800134,   1,       2048) /* ItemType - Gem */
     , (800134,   5,         50) /* EncumbranceVal */
     , (800134,  11,          1) /* MaxStackSize */
     , (800134,  12,          1) /* StackSize */
     , (800134,  13,         50) /* StackUnitEncumbrance */
     , (800134,  15,          3) /* StackUnitValue */
     , (800134,  16,          1) /* ItemUseable - No */
     , (800134,  19,          3) /* Value */
     , (800134,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800134,   1, 'Meta Stone of Lesser Luminance') /* Name */
     , (800134,  14, 'Turn this gem into an Agent of the Arcanum to be granted 500000 luminance.') /* Use */
     , (800134,  20, 'Gems of Lesser Luminance') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800134,   1,   33554809) /* Setup */
     , (800134,   3,  536870932) /* SoundTable */
     , (800134,   8,  100692118) /* Icon */
     , (800134,  22,  872415275) /* PhysicsEffectTable */;
