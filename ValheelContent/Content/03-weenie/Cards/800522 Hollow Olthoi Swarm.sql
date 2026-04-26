DELETE FROM `weenie` WHERE `class_Id` = 800522;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800522, 'Hollow Olthoi Swarm', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800522,   1,        128) /* ItemType - Misc */
     , (800522,   5,          1) /* EncumbranceVal */
     , (800522,   8,          1) /* Mass */
     , (800522,   9,          0) /* ValidLocations - None */
     , (800522,  11,       1000) /* MaxStackSize */
     , (800522,  12,          1) /* StackSize */
     , (800522,  13,         10) /* StackUnitEncumbrance */
     , (800522,  14,         10) /* StackUnitMass */
     , (800522,  15,          1) /* StackUnitValue */
     , (800522,  16,          1) /* ItemUseable - No */
     , (800522,  19,          1) /* Value */
     , (800522,  33,          1) /* Bonded - Bonded */
     , (800522,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800522, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800522,  22, True ) /* Inscribable */
     , (800522,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800522,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800522,   1, 'Hollow Olthoi Swarm (R)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800522,   1,   33554773) /* Setup */
     , (800522,   3,  536870932) /* SoundTable */
     , (800522,   8,  100668176) /* Icon */
     , (800522,  22,  872415275) /* PhysicsEffectTable */;