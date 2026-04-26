DELETE FROM `weenie` WHERE `class_Id` = 802400;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802400, 'mirranode', 26, '2005-02-09 10:00:00') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802400,   1,        128) /* ItemType - Misc */
     , (802400,   5,       6000) /* EncumbranceVal */
     , (802400,   8,       3000) /* Mass */
     , (802400,  16,         48) /* ItemUseable - ViewedRemote */
     , (802400,  19,        200) /* Value */
     , (802400,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (802400,  94,        128) /* TargetType - Misc */
     , (802400, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802400,   1, True ) /* Stuck */
     , (802400,  12, True ) /* ReportCollisions */
     , (802400,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802400,  39,     1.5) /* DefaultScale */
     , (802400,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802400,   1, 'Glistening Node') /* Name */
     , (802400,  14, 'Use a Pickaxe to chip off a chunk of unrefined Mirra ore.') /* Use */
     , (802400,  15, 'A gemstone filled node formed by ancient natural interactions between the land and the planets mana fields.') /* ShortDesc */
     , (802400,  16, 'A gemstone filled node formed by ancient natural interactions between the land and the planets mana fields.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802400,   1,  33555403) /* Setup */
     , (802400,   3,  536870932) /* SoundTable */
     , (802400,   6,   67108990) /* PaletteBase */
     , (802400,   7,  268436088) /* ClothingBase */
     , (802400,   8,  100667349) /* Icon */
     , (802400,  22,  872415275) /* PhysicsEffectTable */;
