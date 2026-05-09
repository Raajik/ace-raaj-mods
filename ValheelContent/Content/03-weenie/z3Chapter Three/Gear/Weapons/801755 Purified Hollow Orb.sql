DELETE FROM `weenie` WHERE `class_Id` = 801755;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801755, 'PurifiedHollowOrb', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801755,   1,        128) /* ItemType - Misc */
     , (801755,   5,         10) /* EncumbranceVal */
     , (801755,   8,         10) /* Mass */
     , (801755,   9,          0) /* ValidLocations - None */
     , (801755,  11,          1) /* MaxStackSize */
     , (801755,  12,          1) /* StackSize */
     , (801755,  13,         10) /* StackUnitEncumbrance */
     , (801755,  14,         10) /* StackUnitMass */
     , (801755,  15,          1) /* StackUnitValue */
     , (801755,  16,          1) /* ItemUseable - No */
     , (801755,  19,          1) /* Value */
     , (801755,  33,          1) /* Bonded - Bonded */
     , (801755,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801755, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801755,  22, True ) /* Inscribable */
     , (801755,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801755,   1, 'Purified Hollow Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801755,   1,   33559253) /* Setup */
     , (801755,   3,  536870932) /* SoundTable */
     , (801755,   8,  100677486) /* Icon */
     , (801755,  22,  872415275) /* PhysicsEffectTable */;
