DELETE FROM `weenie` WHERE `class_Id` = 802023;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802023, 'Ch1ParticipationToken', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802023,   1,        128) /* ItemType - Misc */
     , (802023,   5,          0) /* EncumbranceVal */
     , (802023,   8,          0) /* Mass */
     , (802023,   9,          0) /* ValidLocations - None */
     , (802023,  11,          1) /* MaxStackSize */
     , (802023,  12,          1) /* StackSize */
     , (802023,  13,          0) /* StackUnitEncumbrance */
     , (802023,  14,          0) /* StackUnitMass */
     , (802023,  15,         15) /* StackUnitValue */
     , (802023,  16,          1) /* ItemUseable - No */
     , (802023,  19,         15) /* Value */
     , (802023,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802023, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802023,  22, True ) /* Inscribable */
     , (802023,  69, True) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802023,   1, 'Chapter One Participation Token') /* Name */
     , (802023,  15, 'Use this token to be able to retrieve a reward from a World Boss Event.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802023,   1,   33558119) /* Setup */
     , (802023,   3,  536870932) /* SoundTable */
     , (802023,   8,  100690339) /* Icon */
     , (802023,  22,  872415275) /* PhysicsEffectTable */;