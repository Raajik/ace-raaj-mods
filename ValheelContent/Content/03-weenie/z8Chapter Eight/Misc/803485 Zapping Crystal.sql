DELETE FROM `weenie` WHERE `class_Id` = 803485;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803485, 'Zapping Crystal', 1, '2005-02-09 10:00:00') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803485,   1,        128) /* ItemType - Misc */
     , (803485,   5,       6000) /* EncumbranceVal */
     , (803485,   8,       3000) /* Mass */
     , (803485,  16,          1) /* ItemUseable - No */
     , (803485,  19,        200) /* Value */
     , (803485,  33,          1) /* Bonded - Bonded */
     , (803485,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803485, 114,          2) /* Attuned - Attuned */
     , (803485,  94,        128) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803485,   1, True ) /* Stuck */
     , (803485,  12, True ) /* ReportCollisions */
     , (803485,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803485,  39,       1) /* DefaultScale */
     , (803485,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803485,   1, 'Zapping Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803485,   1,   33557379) /* Setup */
     , (803485,   3,  536870932) /* SoundTable */
     , (803485,   6,   67113398) /* PaletteBase */
     , (803485,   7,  268436279) /* ClothingBase */
     , (803485,   8,  100672195) /* Icon */
     , (803485,  22,  872415275) /* PhysicsEffectTable */;
