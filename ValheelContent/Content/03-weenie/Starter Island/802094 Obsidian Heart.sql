DELETE FROM `weenie` WHERE `class_Id` = 802094;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802094, 'golemheartobsidian2', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802094,   1,        128) /* ItemType - Misc */
     , (802094,   3,         39) /* PaletteTemplate - Black */
     , (802094,   5,        225) /* EncumbranceVal */
     , (802094,   8,        150) /* Mass */
     , (802094,   9,          0) /* ValidLocations - None */
     , (802094,  16,          1) /* ItemUseable - No */
     , (802094,  19,         50) /* Value */
     , (802094,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802094,  22, True ) /* Inscribable */
     , (802094,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802094,  39,     0.4) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802094,   1, 'Obsidian Heart') /* Name */
     , (802094,  33, 'ObsidianHeart') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802094,   1,   33554817) /* Setup */
     , (802094,   3,  536870932) /* SoundTable */
     , (802094,   6,   67111919) /* PaletteBase */
     , (802094,   7,  268435832) /* ClothingBase */
     , (802094,   8,  100671429) /* Icon */
     , (802094,  22,  872415275) /* PhysicsEffectTable */;
