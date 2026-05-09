DELETE FROM `weenie` WHERE `class_Id` = 801931;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801931, 'Hardened Creature Egg', 128, '2023-01-16 09:26:07') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801931,   1,        128) /* ItemType - Misc */
     , (801931,   3,         39) /* PaletteTemplate - Black */
     , (801931,   5,          5) /* EncumbranceVal */
     , (801931,   8,          5) /* Mass */
     , (801931,  11,          1) /* MaxStackSize */
     , (801931,  12,          1) /* StackSize */
     , (801931,  13,          5) /* StackUnitEncumbrance */
     , (801931,  14,          5) /* StackUnitMass */
     , (801931,  15,        500) /* StackUnitValue */
     , (801931,  16,          8) /* ItemUseable - Contained */
     , (801931,  18,          0) /* UiEffects - Lightning */
     , (801931,  19,        500) /* Value */
     , (801931,  33,          1) /* Bonded - Bonded */
     , (801931,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801931,  22, True ) /* Inscribable */
     , (801931,  63, True) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801931,   1, 'Hardened Creature Egg') /* Name */
     , (801931,  33, 'EggPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801931,   1,   33557217) /* Setup */
     , (801931,   3,  536870932) /* SoundTable */
     , (801931,   8,  100671764) /* Icon */
     , (801931,  22,  872415275) /* PhysicsEffectTable */;

