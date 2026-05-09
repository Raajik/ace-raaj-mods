DELETE FROM `weenie` WHERE `class_Id` = 802403;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802403, 'Rock Polishing Kit', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802403,   1,        128) /* ItemType - Misc */
     , (802403,   5,       4000) /* EncumbranceVal */
     , (802403,   8,          5) /* Mass */
     , (802403,   9,          0) /* ValidLocations - None */
     , (802403,  11,          1) /* MaxStackSize */
     , (802403,  12,          1) /* StackSize */
     , (802403,  13,       4000) /* StackUnitEncumbrance */
     , (802403,  14,          5) /* StackUnitMass */
     , (802403,  15,      50000) /* StackUnitValue */
     , (802403,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802403,  19,      50000) /* Value */
     , (802403,  33,         -1) /* Bonded - Normal */
     , (802403,  91,         20) /* MaxStructure */
     , (802403,  92,         20) /* Structure */
     , (802403,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802403,  94,        128) /* TargetType - Misc */
     , (802403, 114,          0) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802403,  22, True ) /* Inscribable */
     , (802403,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802403,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802403,   1, 'Rock Polishing Kit') /* Name */
     , (802403,  14, 'This item is used to polish rocks, specifically powerful ones.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802403,   1,   33555194) /* Setup */
     , (802403,   3,  536870932) /* SoundTable */
     , (802403,   8,  100689344) /* Icon */
     , (802403,  22,  872415275) /* PhysicsEffectTable */
     , (802403,  50,  100688986) /* IconOverlay */;
