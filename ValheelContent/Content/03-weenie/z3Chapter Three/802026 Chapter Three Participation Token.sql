DELETE FROM `weenie` WHERE `class_Id` = 802026;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802026, 'Ch3ParticipationToken', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802026,   1,        128) /* ItemType - Misc */
     , (802026,   5,          0) /* EncumbranceVal */
     , (802026,   8,          0) /* Mass */
     , (802026,   9,          0) /* ValidLocations - None */
     , (802026,  11,          1) /* MaxStackSize */
     , (802026,  12,          1) /* StackSize */
     , (802026,  13,          0) /* StackUnitEncumbrance */
     , (802026,  14,          0) /* StackUnitMass */
     , (802026,  15,        500) /* StackUnitValue */
     , (802026,  16,          1) /* ItemUseable - No */
     , (802026,  19,        500) /* Value */
     , (802026,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802026, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802026,  22, True ) /* Inscribable */
     , (802026,  69, True) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802026,   1, 'Chapter Three Participation Token') /* Name */
     , (802026,  15, 'Use this token to be able to retrieve a reward from a World Boss Event.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802026,   1,   33558119) /* Setup */
     , (802026,   3,  536870932) /* SoundTable */
     , (802026,   8,  100690341) /* Icon */
     , (802026,  22,  872415275) /* PhysicsEffectTable */;