DELETE FROM `weenie` WHERE `class_Id` = 800622;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800622, 'Monstreous Mosswart Head', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800622,   1,        128) /* ItemType - Misc */
     , (800622,   5,        200) /* EncumbranceVal */
     , (800622,   8,        600) /* Mass */
     , (800622,   9,          0) /* ValidLocations - None */
     , (800622,  16,          1) /* ItemUseable - No */
     , (800622,  19,          0) /* Value */
     , (800622,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800622, 150,        103) /* HookPlacement - Hook */
     , (800622, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800622,  22, True ) /* Inscribable */
     , (800622,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800622,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800622,   1, 'Monstreous Mosswart Head') /* Name */
     , (800622,  33, 'monstermossyhead') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800622,   1,   33556824) /* Setup */
     , (800622,   3,  536870932) /* SoundTable */
     , (800622,   8,  100671031) /* Icon */
     , (800622,  22,  872415275) /* PhysicsEffectTable */
     , (800622,  36,  234881046) /* MutateFilter */;
