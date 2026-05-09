DELETE FROM `weenie` WHERE `class_Id` = 802025;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802025, 'Ch2ParticipationToken', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802025,   1,        128) /* ItemType - Misc */
     , (802025,   5,          0) /* EncumbranceVal */
     , (802025,   8,          0) /* Mass */
     , (802025,   9,          0) /* ValidLocations - None */
     , (802025,  11,          1) /* MaxStackSize */
     , (802025,  12,          1) /* StackSize */
     , (802025,  13,          0) /* StackUnitEncumbrance */
     , (802025,  14,          0) /* StackUnitMass */
     , (802025,  15,        500) /* StackUnitValue */
     , (802025,  16,          1) /* ItemUseable - No */
     , (802025,  19,        500) /* Value */
     , (802025,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802025, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802025,  22, True ) /* Inscribable */
     , (802025,  69, True) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802025,   1, 'Chapter Two Participation Token') /* Name */
     , (802025,  15, 'Use this token to be able to retrieve a reward from a World Boss Event.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802025,   1,   33558119) /* Setup */
     , (802025,   3,  536870932) /* SoundTable */
     , (802025,   8,  100690340) /* Icon */
     , (802025,  22,  872415275) /* PhysicsEffectTable */;