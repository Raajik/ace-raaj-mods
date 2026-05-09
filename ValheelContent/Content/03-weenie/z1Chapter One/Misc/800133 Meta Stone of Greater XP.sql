DELETE FROM `weenie` WHERE `class_Id` = 800133;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800133, 'Meta Stone of Greater XP', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800133,   1,       2048) /* ItemType - Gem */
     , (800133,   5,          1) /* EncumbranceVal */
     , (800133,  11,          1) /* MaxStackSize */
     , (800133,  12,          1) /* StackSize */
     , (800133,  13,          1) /* StackUnitEncumbrance */
     , (800133,  15,          9) /* StackUnitValue */
     , (800133,  16,          1) /* ItemUseable - No */
     , (800133,  19,          9) /* Value */
     , (800133,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800133,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800133,   1, 'Meta Stone of Greater XP') /* Name */
     , (800133,  14, 'Turn this gem into an Agent of the Arcanum to be granted six billion experience.') /* Use */
     , (800133,  20, 'Gems of Knowledge') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800133,   1,   33554809) /* Setup */
     , (800133,   3,  536870932) /* SoundTable */
     , (800133,   8,  100689653) /* Icon */
     , (800133,  22,  872415275) /* PhysicsEffectTable */;
