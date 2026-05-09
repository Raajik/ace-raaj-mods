DELETE FROM `weenie` WHERE `class_Id` = 800132;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800132, 'Meta Stone of XP', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800132,   1,       2048) /* ItemType - Gem */
     , (800132,   5,          1) /* EncumbranceVal */
     , (800132,  11,          1) /* MaxStackSize */
     , (800132,  12,          1) /* StackSize */
     , (800132,  13,          1) /* StackUnitEncumbrance */
     , (800132,  15,          3) /* StackUnitValue */
     , (800132,  16,          1) /* ItemUseable - No */
     , (800132,  19,          3) /* Value */
     , (800132,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800132,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800132,   1, 'Meta Stone of Lesser XP') /* Name */
     , (800132,  14, 'Turn this gem into an Agent of the Arcanum to be granted two billion experience.') /* Use */
     , (800132,  20, 'Gems of Knowledge') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800132,   1,   33554809) /* Setup */
     , (800132,   3,  536870932) /* SoundTable */
     , (800132,   8,  100689653) /* Icon */
     , (800132,  22,  872415275) /* PhysicsEffectTable */;
