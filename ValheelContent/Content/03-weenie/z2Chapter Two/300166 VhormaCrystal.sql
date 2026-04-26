DELETE FROM `weenie` WHERE `class_Id` = 300166;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300166, 'vhormacrystal', 26, '2005-02-09 10:00:00') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300166,   1,        128) /* ItemType - Misc */
     , (300166,   5,       6000) /* EncumbranceVal */
     , (300166,   8,       3000) /* Mass */
     , (300166,  16,         48) /* ItemUseable - ViewedRemote */
     , (300166,  19,        200) /* Value */
     , (300166,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (300166,  94,        128) /* TargetType - Misc */
     , (300166, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300166,   1, True ) /* Stuck */
     , (300166,  12, True ) /* ReportCollisions */
     , (300166,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300166,  39,     1.5) /* DefaultScale */
     , (300166,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300166,   1, 'Vhorma Crystal') /* Name */
     , (300166,  14, 'Use a Pickaxe to chip off a chunk of raw Vhorma.') /* Use */
     , (300166,  15, 'A giant crystal of Vhorma formed by ancient natural interactions between the land and the planets mana fields.') /* ShortDesc */
     , (300166,  16, 'A giant crystal of Vhorma formed by ancient natural interactions between the land and the planets mana fields.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300166,   1,   33557379) /* Setup */
     , (300166,   3,  536870932) /* SoundTable */
     , (300166,   6,   67113398) /* PaletteBase */
     , (300166,   7,  268436279) /* ClothingBase */
     , (300166,   8,  100672195) /* Icon */
     , (300166,  22,  872415275) /* PhysicsEffectTable */;
