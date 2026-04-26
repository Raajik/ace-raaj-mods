DELETE FROM `weenie` WHERE `class_Id` = 804042;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804042, 'FlameofCragstone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804042,   1,        128) /* ItemType - Misc */
     , (804042,   5,         50) /* EncumbranceVal */
     , (804042,   8,          5) /* Mass */
     , (804042,   9,          0) /* ValidLocations - None */
     , (804042,  11,          1) /* MaxStackSize */
     , (804042,  12,          1) /* StackSize */
     , (804042,  13,          1) /* StackUnitEncumbrance */
     , (804042,  14,          1) /* StackUnitMass */
     , (804042,  15,          1) /* StackUnitValue */
     , (804042,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804042,  19,          1) /* Value */
     , (804042,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804042,  94,          2) /* TargetType - Armor */
     , (804042, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804042,  22, True ) /* Inscribable */
     , (804042,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804042,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804042,   1, 'Flame of Cragstone') /* Name */
     , (804042,  14, 'Use this item on any Tradewind Path armor to enhance it to it''s final form.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804042,   1,   33559253) /* Setup */
     , (804042,   3,  536870932) /* SoundTable */
     , (804042,   8,  100667388) /* Icon */
     , (804042,  22,  872415275) /* PhysicsEffectTable */;
