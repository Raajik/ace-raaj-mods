DELETE FROM `weenie` WHERE `class_Id` = 802287;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802287, 'CompactedMirraPowder', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802287,   1,          128) /* ItemType - Misc */
     , (802287,   5,            1) /* EncumbranceVal */
     , (802287,   8,            5) /* Mass */
     , (802287,   9,            0) /* ValidLocations - None */
     , (802287,  11,            1) /* MaxStackSize */
     , (802287,  12,            1) /* StackSize */
     , (802287,  13,            1) /* StackUnitEncumbrance */
     , (802287,  14,            5) /* StackUnitMass */
     , (802287,  15,        15000) /* StackUnitValue */
     , (802287,  16,      2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802287,  18,            1) /* UiEffects */
     , (802287,  19,        15000) /* Value */
     , (802287,  93,         1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802287,  94,   2147483647) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802287,  22, True ) /* Inscribable */
     , (802287,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802287,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802287,   1, 'Compacted Mirra Powder') /* Name */
     , (802287,  14, 'Taken from then powder of refined Mirra Gemstones and compacted into a rough stone, use this on a Hollow weapon to infuse it with Mirra properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802287,   1,   33556769) /* Setup */
     , (802287,   3,  536870932) /* SoundTable */
     , (802287,   6,   67111919) /* PaletteBase */
     , (802287,   7,  268435723) /* ClothingBase */
     , (802287,   8,  100673039) /* Icon */
     , (802287,  22,  872415275) /* PhysicsEffectTable */
     , (802287,  52,  100676435) /* IconUnderlay */;
