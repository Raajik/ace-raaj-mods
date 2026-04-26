DELETE FROM `weenie` WHERE `class_Id` = 800135;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800135, 'Meta Stone of Greater Luminance', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800135,   1,       2048) /* ItemType - Gem */
     , (800135,   5,         50) /* EncumbranceVal */
     , (800135,  11,          1) /* MaxStackSize */
     , (800135,  12,          1) /* StackSize */
     , (800135,  13,         50) /* StackUnitEncumbrance */
     , (800135,  15,          9) /* StackUnitValue */
     , (800135,  16,          1) /* ItemUseable - No */
     , (800135,  19,          9) /* Value */
     , (800135,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800135,   1, 'Meta Stone of Greater Luminance') /* Name */
     , (800135,  14, 'Turn this gem into an Agent of the Arcanum to be granted 1500000 luminance.') /* Use */
     , (800135,  20, 'Gems of Greater Luminance') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800135,   1,   33554809) /* Setup */
     , (800135,   3,  536870932) /* SoundTable */
     , (800135,   8,  100692118) /* Icon */
     , (800135,  22,  872415275) /* PhysicsEffectTable */;
