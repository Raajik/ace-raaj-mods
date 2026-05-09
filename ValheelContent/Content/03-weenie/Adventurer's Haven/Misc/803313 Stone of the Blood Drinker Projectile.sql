DELETE FROM `weenie` WHERE `class_Id` = 803313;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803313, 'Stone of the Blood Drinker3', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803313,   1,        128) /* ItemType - Misc */
     , (803313,   5,       4000) /* EncumbranceVal */
     , (803313,   8,          5) /* Mass */
     , (803313,   9,          0) /* ValidLocations - None */
     , (803313,  11,          1) /* MaxStackSize */
     , (803313,  12,          1) /* StackSize */
     , (803313,  13,       4000) /* StackUnitEncumbrance */
     , (803313,  14,          5) /* StackUnitMass */
     , (803313,  15,       5000) /* StackUnitValue */
     , (803313,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803313,  19,       5000) /* Value */
     , (803313,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803313,  94,        256) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803313,  22, True ) /* Inscribable */
     , (803313,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803313,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803313,   1, 'Stone of the Blood Drinker') /* Name */
     , (803313,  14, 'Use this item on any item to apply a spell to a projectile.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803313,   1,   33559631) /* Setup */
     , (803313,   3,  536870932) /* SoundTable */
     , (803313,   6,   67116700) /* PaletteBase */
     , (803313,   8,  100673986) /* Icon */
     , (803313,  22,  872415275) /* PhysicsEffectTable */
     , (803313,  52,  100676444) /* IconUnderlay */;
