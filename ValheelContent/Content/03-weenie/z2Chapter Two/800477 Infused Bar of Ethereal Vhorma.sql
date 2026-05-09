DELETE FROM `weenie` WHERE `class_Id` = 800477;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800477, 'Infused Bar of Ethereal Vhorma', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800477,   1,        128) /* ItemType - Misc */
     , (800477,   5,         50) /* EncumbranceVal */
     , (800477,   8,         50) /* Mass */
     , (800477,   9,          0) /* ValidLocations - None */
     , (800477,  11,         25) /* MaxStackSize */
     , (800477,  12,          1) /* StackSize */
     , (800477,  13,         50) /* StackUnitEncumbrance */
     , (800477,  14,         50) /* StackUnitMass */
     , (800477,  15,          0) /* StackUnitValue */
     , (800477,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800477,  18,          1) /* UiEffects - Magical */
     , (800477,  19,          0) /* Value */
     , (800477,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800477,  94,          2) /* TargetType - Armor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800477,  22, True ) /* Inscribable */
     , (800477,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800477,   1, 'Infused Bar of Ethereal Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800477,   1,   33555677) /* Setup */
     , (800477,   8,  100689897) /* Icon */
     , (800477,  52,  100689404) /* IconUnderlay */;
