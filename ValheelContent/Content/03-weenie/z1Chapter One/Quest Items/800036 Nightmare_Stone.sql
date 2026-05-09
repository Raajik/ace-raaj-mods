DELETE FROM `weenie` WHERE `class_Id` = 800036;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800036, 'Nightmare Stone', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800036,   1,        128) /* ItemType - Misc */
     , (800036,   5,         10) /* EncumbranceVal */
     , (800036,   8,         10) /* Mass */
     , (800036,   9,          0) /* ValidLocations - None */
     , (800036,  11,          1) /* MaxStackSize */
     , (800036,  12,          1) /* StackSize */
     , (800036,  13,         10) /* StackUnitEncumbrance */
     , (800036,  14,         10) /* StackUnitMass */
     , (800036,  15,          1) /* StackUnitValue */
     , (800036,  16,          1) /* ItemUseable - No */
     , (800036,  19,          1) /* Value */
     , (800036,  33,          1) /* Bonded - Bonded */
     , (800036,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800036, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800036,  22, True ) /* Inscribable */
     , (800036,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800036,   1, 'Nightmare Stone') /* Name */
     , (800036,  16, 'This stone looks as though it was forced out of a magical object. Give this to the Arcanum Gem Researcher in Old Yanshi.') /* LongDesc */
     , (800036,  33, 'NightmareStonePickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800036,   1,   33556407) /* Setup */
     , (800036,   3,  536870932) /* SoundTable */
     , (800036,   8,  100672516) /* Icon */
     , (800036,  22,  872415275) /* PhysicsEffectTable */;
