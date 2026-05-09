DELETE FROM `weenie` WHERE `class_Id` = 803249;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803249, 'Draking Forge Hammer', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803249,   1,        128) /* ItemType - Misc */
     , (803249,   5,       4000) /* EncumbranceVal */
     , (803249,   8,          5) /* Mass */
     , (803249,   9,          0) /* ValidLocations - None */
     , (803249,  11,          1) /* MaxStackSize */
     , (803249,  12,          1) /* StackSize */
     , (803249,  13,       4000) /* StackUnitEncumbrance */
     , (803249,  14,          5) /* StackUnitMass */
     , (803249,  15,        250) /* StackUnitValue */
     , (803249,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803249,  19,        250) /* Value */
     , (803249,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803249,  94,          2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803249,  22, True ) /* Inscribable */
     , (803249,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803249,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803249,   1, 'Drakin Forge Hammer') /* Name */
     , (803249,  14, 'Use this item on Arramoran Gear to harden it with Drakin Forged properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803249,   1,   33559631) /* Setup */
     , (803249,   3,  536870932) /* SoundTable */
     , (803249,   6,   67116700) /* PaletteBase */
     , (803249,   8,  100688029) /* Icon */
     , (803249,  22,  872415275) /* PhysicsEffectTable */
     , (803249,  52,  100686604) /* IconUnderlay */;
