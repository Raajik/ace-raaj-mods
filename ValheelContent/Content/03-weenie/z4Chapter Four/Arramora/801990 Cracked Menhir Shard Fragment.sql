DELETE FROM `weenie` WHERE `class_Id` = 801990;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801990, 'CrackedMenhirShardFragment', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801990,   1,        128) /* ItemType - Misc */
     , (801990,   5,         10) /* EncumbranceVal */
     , (801990,   8,         10) /* Mass */
     , (801990,   9,          0) /* ValidLocations - None */
     , (801990,  11,          1) /* MaxStackSize */
     , (801990,  12,          1) /* StackSize */
     , (801990,  13,         10) /* StackUnitEncumbrance */
     , (801990,  14,         10) /* StackUnitMass */
     , (801990,  15,          1) /* StackUnitValue */
     , (801990,  16,          1) /* ItemUseable - No */
     , (801990,  19,          1) /* Value */
     , (801990,  33,          1) /* Bonded - Bonded */
     , (801990,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801990, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801990,  22, True ) /* Inscribable */
     , (801990,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801990,   1, 'Cracked Menhir Shard Fragment') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801990,   1,   33556407) /* Setup */
     , (801990,   3,  536870932) /* SoundTable */
     , (801990,   8,  100672516) /* Icon */
     , (801990,  22,  872415275) /* PhysicsEffectTable */
     , (801990,  52,  100686604) /* IconUnderlay */;
